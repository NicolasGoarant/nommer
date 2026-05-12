# lib/tasks/migrate_to_cloudinary.rb
# Usage : rails runner lib/tasks/migrate_to_cloudinary.rb

require "cloudinary"

Cloudinary.config_from_url(ENV.fetch("CLOUDINARY_URL"))

puts "☁️  Migration des images vers Cloudinary\n\n"

Pathology.published.order(:name).each do |p|
  next if p.image_url.blank?
  next if p.image_url.include?("cloudinary.com") # déjà migré

  print "#{p.name}... "

  begin
    result = Cloudinary::Uploader.upload(
      p.image_url,
      folder:         "nommer",
      public_id:      p.slug,
      overwrite:      true,
      resource_type:  "image",
      transformation: [
        { width: 800, height: 460, crop: "fill", gravity: "center" },
        { quality: "auto", fetch_format: "auto" }
      ]
    )

    new_url = result["secure_url"]
    p.update!(image_url: new_url)
    puts "✅"
    puts "   #{new_url}"

  rescue => e
    puts "❌ #{e.message}"
  end

  sleep 0.5
end

puts "\n✨ Migration terminée !"
puts "#{Pathology.where('image_url LIKE ?', '%cloudinary%').count} images sur Cloudinary."
