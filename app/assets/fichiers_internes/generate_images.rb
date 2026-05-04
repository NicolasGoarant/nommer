#!/usr/bin/env ruby
# lib/tasks/generate_images.rb
# Usage : rails runner lib/tasks/generate_images.rb

require "net/http"
require "json"

LEONARDO_API_KEY = ENV.fetch("LEONARDO_API_KEY")
MODEL_ID = "aa77f04e-3eec-4034-9c07-d0f619684628" # Leonardo Kino XL — photoréaliste cinématique

# ── STYLE DE BASE commun à toutes les images ─────────────────────────────────
BASE_STYLE = "Soft editorial medical photography. Intimate, warm, compassionate. " \
             "Muted tones, cream and warm beige tones. No text, no clinical setting, " \
             "no white coat, no stethoscope. Cinematic lighting, shallow depth of field. " \
             "Real person, candid, non-staged."

# ── PROMPTS PAR PATHOLOGIE ───────────────────────────────────────────────────
PATHOLOGY_PROMPTS = {
  "endometriose" =>
    "A young woman sitting curled up on a sofa, hands pressed gently on her lower abdomen, eyes closed, quiet expression of pain.",

  "fibromyalgie" =>
    "A middle-aged woman gently touching her shoulder and neck, standing near a window in soft morning light, expression of quiet exhaustion.",

  "sopk" =>
    "A young woman looking thoughtfully at her reflection in a bathroom mirror, soft warm light.",

  "syndrome-fatigue-chronique" =>
    "A person lying on a bed fully clothed in daylight, staring at the ceiling, expression of deep exhaustion, unmade bed.",

  "apnees-sommeil" =>
    "A man sitting on the edge of a bed in early morning, elbows on knees, face in hands, looking exhausted despite having slept.",

  "narcolepsie" =>
    "A young person suddenly asleep at a desk with books, head resting on crossed arms, mid-day light.",

  "autisme-adulte" =>
    "An adult sitting alone in a quiet corner, noise-cancelling headphones on, reading intently, soft focused light.",

  "tdah-adulte" =>
    "A young adult at a cluttered desk, pen in hand, staring out the window, multiple open notebooks around them.",

  "trouble-anxieux-generalise" =>
    "A person sitting on a chair, knees pulled to chest, looking down, in a quiet room with soft diffused light.",

  "trouble-bipolaire" =>
    "A person sitting by a window at dusk, one half of their face lit, the other in shadow, contemplative expression.",

  "lupus" =>
    "A young woman with a faint butterfly rash on her cheeks, sitting in gentle indoor light, calm expression.",

  "hashimoto" =>
    "A woman wrapped in a thick cardigan, holding a warm cup of tea, looking tired but thoughtful.",

  "spondylarthrite" =>
    "A young man stretching carefully in the morning, hand on his lower back, stiff posture, soft bedroom light.",

  "polyarthrite-rhumatoide" =>
    "Close-up of hands with slightly swollen joints holding a warm cup, soft warm light, sympathetic framing.",

  "maladie-coeliaque" =>
    "A person standing in a kitchen, looking at a package of food with careful attention, calm domestic setting.",

  "sjogren" =>
    "A woman applying eye drops, eyes closed, gentle expression, soft bathroom light.",

  "sclerose-en-plaques" =>
    "A person walking slowly with a cane through a sunlit corridor, looking forward with quiet determination.",

  "migraine-chronique" =>
    "A person sitting in a darkened room, hand pressed to temple, eyes closed, curtains drawn against bright light.",

  "nevralgie-trijumeau" =>
    "A person holding the side of their face with both hands, eyes closed tight, expression of acute pain.",

  "ehlers-danlos" =>
    "A young woman sitting carefully, joints visibly hypermobile, looking thoughtful, calm indoor setting.",

  "pots" =>
    "A person gripping a stair rail after standing up quickly, slightly dizzy expression, natural light.",

  "lyme-chronique" =>
    "A person sitting outdoors on a bench, looking fatigued, wrapped in a light jacket despite mild weather.",

  "porphyrie" =>
    "A person indoors avoiding a bright window, blinds half-drawn, sitting in comfortable low light.",

  "behcet" =>
    "A person looking in a mirror, touching their face gently, thoughtful expression, warm bathroom light.",

  "hypotension-orthostatique" =>
    "A person standing up from a chair, holding the armrest for balance, slightly dizzy expression.",

  "intestin-irritable" =>
    "A person sitting at a kitchen table, hands resting on stomach, looking down thoughtfully at their meal.",

  "crohn" =>
    "A young person sitting on a hospital bed in casual clothes, not in a gown, looking quietly out the window.",

  "rectocolite-hemorragique" =>
    "A person resting on a sofa, blanket over their lap, looking tired but calm, warm domestic light.",

  "maladie-a-corps-de-lewy" =>
    "An elderly person sitting in an armchair, hands folded in lap, looking thoughtfully at nothing in particular, soft afternoon light."
}.freeze

# ── FONCTIONS API ─────────────────────────────────────────────────────────────

def api_post(path, body)
  uri = URI("https://cloud.leonardo.ai/api/rest/v1#{path}")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  req = Net::HTTP::Post.new(uri, {
    "accept"        => "application/json",
    "content-type"  => "application/json",
    "authorization" => "Bearer #{LEONARDO_API_KEY}"
  })
  req.body = body.to_json
  JSON.parse(http.request(req).body)
end

def api_get(path)
  uri = URI("https://cloud.leonardo.ai/api/rest/v1#{path}")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  req = Net::HTTP::Get.new(uri, {
    "accept"        => "application/json",
    "authorization" => "Bearer #{LEONARDO_API_KEY}"
  })
  JSON.parse(http.request(req).body)
end

def generate_image(prompt)
  full_prompt = "#{BASE_STYLE} #{prompt}"
  response = api_post("/generations", {
    modelId:    MODEL_ID,
    prompt:     full_prompt,
    width:      1344,
    height:     768,
    num_images: 1,
    presetStyle: "CINEMATIC",
    alchemy:    true,
    photoReal:  true,
    photoRealVersion: "v2"
  })
  response.dig("sdGenerationJob", "generationId")
end

def wait_for_image(generation_id, max_attempts: 30)
  max_attempts.times do
    sleep 3
    result = api_get("/generations/#{generation_id}")
    images = result.dig("generations_by_pk", "generated_images")
    status = result.dig("generations_by_pk", "status")

    return images.first["url"] if status == "COMPLETE" && images&.any?
    return nil if status == "FAILED"

    print "."
  end
  nil
end

# ── BOUCLE PRINCIPALE ─────────────────────────────────────────────────────────

puts "🎨 Génération des images Leonardo pour #{PATHOLOGY_PROMPTS.size} pathologies\n\n"

PATHOLOGY_PROMPTS.each do |slug, prompt|
  pathology = Pathology.find_by(slug: slug)
  unless pathology
    puts "⚠️  Pathologie introuvable : #{slug}"
    next
  end

  print "#{pathology.name}... "

  generation_id = generate_image(prompt)
  unless generation_id
    puts "❌ Erreur lors de la création"
    next
  end

  image_url = wait_for_image(generation_id)
  unless image_url
    puts "\n❌ Timeout ou échec"
    next
  end

  pathology.update!(image_url: image_url)
  puts " ✅"
  puts "   #{image_url}"

  sleep 2 # pause entre chaque génération
end

puts "\n✨ Terminé !"
