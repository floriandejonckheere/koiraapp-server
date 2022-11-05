# frozen_string_literal: true

puts "== Creating dogs =="

return if Dog.any?

shelters = Shelter.where(type: "shelter")

YAML.load_file("#{__dir__}/dogs.yml").each do |attributes|
  attributes["shelter"] = Shelter.find_by(name: attributes["shelter"]) || shelters.sample

  dog = Dog.create!(**attributes)

  Dir[Rails.root.join("data/#{attributes['name'].downcase}/*.jpg")].each do |f|
    blob = ActiveStorage::Blob.create_and_upload!(io: File.open(f), filename: File.basename(f))

    image = MiniMagick::Image.open(f)
    blob.update! metadata: blob.metadata.merge(blurhash: Blurhash.encode(image.width, image.height, image.get_pixels.flatten))

    dog.images.attach(blob)
  end
end
