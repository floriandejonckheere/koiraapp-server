# frozen_string_literal: true

puts "== Creating questions =="

return if Question.any?

YAML.load_file("#{__dir__}/questions.yml").each do |attributes|
  Question.create!(**attributes)
end
