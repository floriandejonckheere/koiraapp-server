# frozen_string_literal: true

puts "== Creating dogs =="

return if Dog.any?

shelters = Shelter.all

YAML.load_file("#{__dir__}/dogs.yml").each do |attributes|
  dog = Dog.create!(**attributes.merge(shelter: shelters.sample))

  Dir[Rails.root.join("data/#{attributes['name'].downcase}/*.jpg")].each do |f|
    dog.images.attach(io: File.open(f), filename: File.basename(f))
  end
end
