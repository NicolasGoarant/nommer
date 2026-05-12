require "net/http"
require "json"

LEONARDO_API_KEY = ENV.fetch("LEONARDO_API_KEY")
MODEL_ID = "aa77f04e-3eec-4034-9c07-d0f619684628"

BASE_STYLE = "Close-up editorial still life photography. Warm, intimate. " \
             "Muted tones, cream and warm beige background. No people, no faces, no text, " \
             "no clinical setting. Shallow depth of field, soft natural light. Magazine quality."

TARGETS = {
  "lombalgie-chronique" =>
    "A lumbar support pillow and a tube of anti-inflammatory gel laid on a warm wooden surface, with a folded MRI printout slightly blurred behind them, soft side light.",

  "myasthenie-grave" =>
    "A pair of drooping eyelid support glasses next to a blister pack of pyridostigmine tablets on a cream surface, soft warm morning light.",

  "nevralgie-trijumeau" =>
    "A cold gel pack folded beside a box of anticonvulsant medication and a dental x-ray film on a light wooden surface, clinical yet warm tone.",

  "sclerose-en-plaques" =>
    "A self-injection pen for MS medication beside a weekly symptom diary and a pair of compression socks, arranged on a warm beige surface.",

  "sopk" =>
    "A bottle of hormone medication, a small thermometer, and a cycle tracking booklet open to a page of handwritten notes, soft warm light on a cream surface."
}.freeze

def api_post(path, body)
  uri = URI("https://cloud.leonardo.ai/api/rest/v1#{path}")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  req = Net::HTTP::Post.new(uri, {
    "accept" => "application/json", "content-type" => "application/json",
    "authorization" => "Bearer #{LEONARDO_API_KEY}"
  })
  req.body = body.to_json
  JSON.parse(http.request(req).body)
end

def api_get(path)
  uri = URI("https://cloud.leonardo.ai/api/rest/v1#{path}")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  req = Net::HTTP::Get.new(uri, { "accept" => "application/json", "authorization" => "Bearer #{LEONARDO_API_KEY}" })
  JSON.parse(http.request(req).body)
end

def generate_and_wait(prompt)
  resp = api_post("/generations", {
    modelId: MODEL_ID, prompt: "#{BASE_STYLE} #{prompt}",
    width: 1344, height: 768, num_images: 1,
    presetStyle: "CINEMATIC", alchemy: true, photoReal: true, photoRealVersion: "v2"
  })
  gen_id = resp.dig("sdGenerationJob", "generationId")
  return nil unless gen_id
  30.times do
    sleep 3
    result = api_get("/generations/#{gen_id}")
    images = result.dig("generations_by_pk", "generated_images")
    status = result.dig("generations_by_pk", "status")
    return images.first["url"] if status == "COMPLETE" && images&.any?
    return nil if status == "FAILED"
    print "."
  end
  nil
end

TARGETS.each do |slug, prompt|
  p = Pathology.find_by(slug: slug)
  next puts "⚠️  introuvable: #{slug}" unless p
  print "#{p.name}... "
  url = generate_and_wait(prompt)
  if url
    p.update!(image_url: url)
    puts " ✅\n   #{url}"
  else
    puts " ❌"
  end
  sleep 2
end
puts "✨ Terminé !"
