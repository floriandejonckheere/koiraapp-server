# frozen_string_literal: true

puts "== Creating dogs =="

return if Dog.any?

shelters = Shelter.where(type: "shelter")

YAML.load_file("#{__dir__}/dogs.yml").each do |attributes|
  attributes["shelter"] = Shelter.find_by(name: attributes["shelter"]) || shelters.sample

  dog = Dog.create!(**attributes)

  Dir[Rails.root.join("data/#{attributes['name'].downcase}/*.jpg")].each do |f|
    blob = ActiveStorage::Blob.create_and_upload!(io: File.open(f), filename: File.basename(f))
    dog.images.attach(blob)
  end
end
