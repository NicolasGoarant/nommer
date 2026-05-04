#!/usr/bin/env ruby
# lib/tasks/generate_images.rb
# Usage : rails runner lib/tasks/generate_images.rb

require "net/http"
require "json"

LEONARDO_API_KEY = ENV.fetch("LEONARDO_API_KEY")
MODEL_ID = "aa77f04e-3eec-4034-9c07-d0f619684628" # Leonardo Kino XL — photoréaliste cinématique

# ── STYLE DE BASE commun à toutes les images ─────────────────────────────────
BASE_STYLE = "Close-up editorial still life photography. Warm, intimate, compassionate. " \
             "Muted tones, cream and warm beige background. No people, no faces, no text, " \
             "no clinical setting, no white coat. Shallow depth of field, soft natural light, " \
             "objects carefully arranged, tactile and human. Magazine quality."

# ── PROMPTS PAR PATHOLOGIE ───────────────────────────────────────────────────
PATHOLOGY_PROMPTS = {
  "endometriose" =>
    "A red rubber hot water bottle resting on a soft cream blanket, a few ibuprofen pills beside it, warm side light.",

  "fibromyalgie" =>
    "Multiple opened pill organizers, a tube of muscle cream, a small notebook with handwritten symptom notes, soft warm light.",

  "sopk" =>
    "A clear glass of water, a bottle of hormone pills, a small plant, scattered lab result papers slightly blurred, warm beige surface.",

  "syndrome-fatigue-chronique" =>
    "An unmade bed with rumpled cream sheets in daylight, a barely touched glass of water on the nightstand, soft window light.",

  "apnees-sommeil" =>
    "A CPAP mask and breathing tube coiled neatly on a wooden nightstand, beside an alarm clock showing 7am, warm morning light.",

  "narcolepsie" =>
    "An open book face-down on a desk, reading glasses beside it, a cold cup of tea, soft afternoon light, quiet domestic setting.",

  "autisme-adulte" =>
    "Noise-cancelling headphones resting on a stack of carefully organized books, a fidget cube nearby, clean minimal desk, soft light.",

  "tdah-adulte" =>
    "A cluttered desk with overlapping sticky notes, three uncapped pens, an open planner with crossed-out items, warm side light.",

  "trouble-anxieux-generalise" =>
    "A worn journal open to a page of anxious handwriting, a chamomile tea bag steeping, hands not visible, soft warm light.",

  "trouble-bipolaire" =>
    "Two contrasting objects side by side: a bright yellow mug and a dark navy one, soft neutral background, shallow depth of field.",

  "lupus" =>
    "A collection of pill bottles, a sun hat, and SPF50 sunscreen tube arranged on a cream surface, soft diffused light.",

  "hashimoto" =>
    "A thermometer, a thick wool scarf, and thyroid medication bottle on a warm wooden surface, soft morning light.",

  "spondylarthrite" =>
    "A yoga mat partially rolled out, a lumbar support cushion, and a tube of anti-inflammatory gel, soft natural light.",

  "polyarthrite-rhumatoide" =>
    "Close-up of a pair of compression gloves laid flat on a warm wooden surface, a small pill case beside them, soft light.",

  "maladie-coeliaque" =>
    "A supermarket food label being examined under a magnifying glass, gluten-free products blurred in background, warm light.",

  "sjogren" =>
    "A small bottle of eye drops, a tube of dry mouth gel, and a glass of water on a bathroom shelf, soft white light.",

  "sclerose-en-plaques" =>
    "A folded mobility aid cane leaning against a wall, a medication injector pen beside a weekly pill organizer, soft light.",

  "migraine-chronique" =>
    "Blackout curtains half-drawn, a cold compress folded on a pillow, two migraine tablets and a glass of water, dim warm light.",

  "nevralgie-trijumeau" =>
    "A soft ice pack, a bottle of anticonvulsant medication, and a dental x-ray film on a light surface, clinical yet warm.",

  "ehlers-danlos" =>
    "Multiple colorful kinesiology tape strips laid out in a pattern, a small wrist brace, soft neutral background.",

  "pots" =>
    "A large water bottle, electrolyte sachets, and compression stockings arranged on a light surface, fresh morning light.",

  "lyme-chronique" =>
    "A pill organizer overflowing with supplements, a small tick removal kit, and a nature field guide, warm earthy tones.",

  "porphyrie" =>
    "A blackout curtain, UV-blocking window film samples, and a bottle of medication on a wooden surface, low warm light.",

  "behcet" =>
    "A collection of different specialist appointment cards fanned out, a prescription pad, soft warm neutral background.",

  "hypotension-orthostatique" =>
    "A blood pressure monitor cuff unrolled on a table, a glass of water with salt sachets beside it, soft warm light.",

  "intestin-irritable" =>
    "A food diary open with handwritten meal notes, probiotic capsules, and a cup of peppermint tea, warm kitchen light.",

  "crohn" =>
    "A hospital wristband, several medication blister packs, and a small comfort object (a worn book) on a cream surface.",

  "rectocolite-hemorragique" =>
    "A row of medication boxes neatly aligned, a patient information leaflet, and a warm tea mug, soft neutral light.",

  "maladie-a-corps-de-lewy" =>
    "A worn family photograph, a weekly pill organizer, and a caregiver's notebook with handwritten notes, warm afternoon light."
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
