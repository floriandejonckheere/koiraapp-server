# frozen_string_literal: true

puts "== Creating shelters =="

return if Shelter.any?

YAML.load_file("#{__dir__}/shelters.yml").each do |attributes|
  shelter = Shelter.create!(**attributes)

  file = Rails.root.join("data/#{shelter.name.parameterize}.jpg")

  next unless File.exists? file

  blob = ActiveStorage::Blob.create_and_upload!(io: File.open(file), filename: File.basename(file))
  shelter.image.attach(blob)
end
