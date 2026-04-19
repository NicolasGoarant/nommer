class DiagnosticService
  def initialize(description)
    @description = description
  end

  def run
    prompt = build_prompt
    response = call_claude(prompt)
    parse_response(response)
  rescue => e
    Rails.logger.error "DiagnosticService error: #{e.message}"
    []
  end

  private

  def build_prompt
    pathologies = Pathology.published.map { |p|
      "#{p.name} (slug: #{p.slug}) — symptômes clés : #{p.key_symptoms_array.join(', ')}"
    }.join("\n")

    <<~PROMPT
      Tu es un assistant d'aide à la documentation médicale pour des patients en errance diagnostique.
      Un patient décrit ce qu'il ressent. Ton rôle est d'identifier des pathologies à errance diagnostique fréquente
      qui pourraient correspondre à ce qu'il décrit, afin qu'il puisse en discuter avec son médecin.

      Ce que le patient décrit :
      "#{@description}"

      Liste des pathologies à considérer :
      #{pathologies}

      Réponds UNIQUEMENT en JSON valide, sans texte avant ou après, sans backticks, au format :
      [
        {
          "slug": "slug-de-la-pathologie",
          "name": "Nom de la pathologie",
          "reasoning": "En 2-3 phrases accessibles : pourquoi ce profil évoque cette pathologie",
          "matched_symptoms": ["symptôme mentionné 1", "symptôme mentionné 2"],
          "next_steps": "Une action concrète à proposer au médecin (examen, spécialiste...)"
        }
      ]

      Règles strictes :
      - Maximum 3 suggestions, uniquement si vraiment pertinentes
      - Jamais de certitude — toujours "peut évoquer", "est compatible avec"
      - Ton chaleureux, jamais alarmiste
      - Si rien ne correspond, retourne []
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
    clean = text.gsub(/```json|```/, "").strip
    JSON.parse(clean)
  rescue JSON::ParserError
    []
  end
end
