# frozen_string_literal: true

puts "== Creating users =="

return if User.any?

YAML.load_file("#{__dir__}/users.yml").each do |attributes|
  User.create!(**attributes)
end
