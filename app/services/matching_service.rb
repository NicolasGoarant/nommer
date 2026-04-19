class MatchingService
  def initialize(user)
    @user = user
  end

  def run
    symptoms   = @user.health_entries.symptoms.chronological
    context    = build_context(symptoms)
    pathologies = Pathology.published.map { |p|
      "#{p.name} (slug: #{p.slug}) — #{p.key_symptoms_array.join(', ')}"
    }.join("\n")

    prompt   = build_prompt(context, pathologies)
    response = call_claude(prompt)
    results  = parse_response(response)
    save_suggestions(results)
  end

  private

  def build_context(symptoms)
    lines = symptoms.map { |s|
      "- #{s.occurred_on.strftime('%m/%Y')} | #{s.title}" \
      "#{s.body_zone ? " (#{s.body_zone})" : ''}" \
      "#{s.intensity ? " | intensité #{s.intensity}/5" : ''}"
    }
    "Genre : #{@user.gender || 'non renseigné'}\n" \
    "Âge : #{@user.age || 'non renseigné'} ans\n\n" \
    "Symptômes :\n#{lines.join("\n")}"
  end

  def build_prompt(context, pathologies)
    <<~PROMPT
      Tu analyses le journal de bord d'un patient pour identifier des pathologies à errance diagnostique.

      Profil patient :
      #{context}

      Pathologies à analyser :
      #{pathologies}

      Réponds UNIQUEMENT en JSON valide sans backticks :
      [{"slug":"...","reasoning":"...","matched_symptoms":["..."]}]

      Maximum 5 suggestions. Jamais de certitude. Ton neutre et factuel.
    PROMPT
  end

  def call_claude(prompt)
    client = Anthropic::Client.new(access_token: ENV.fetch("ANTHROPIC_API_KEY"))
    response = client.messages(
      model:      "claude-haiku-4-5",
      max_tokens: 1500,
      messages:   [{ role: "user", content: prompt }]
    )
    response["content"].first["text"]
  end

  def parse_response(text)
    JSON.parse(text.gsub(/```json|```/, "").strip)
  rescue
    []
  end

  def save_suggestions(results)
    @user.pathology_suggestions.where(status: "pending").destroy_all
    results.each do |r|
      p = Pathology.find_by(slug: r["slug"])
      next unless p
      @user.pathology_suggestions.create!(
        pathology:        p,
        reasoning:        r["reasoning"],
        matched_symptoms: r["matched_symptoms"].to_json,
        status:           "pending"
      )
    end
  end
end
