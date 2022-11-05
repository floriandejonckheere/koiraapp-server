# frozen_string_literal: true

puts "== Creating shelters =="

return if Shelter.any?

YAML.load_file("#{__dir__}/shelters.yml").each do |attributes|
  Shelter.create!(**attributes)
end
