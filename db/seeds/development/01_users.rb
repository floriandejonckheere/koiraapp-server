# frozen_string_literal: true

puts "== Creating users =="

return if User.any?

YAML.load_file("#{__dir__}/users.yml").each do |attributes|
  User.create!(
    **attributes.merge(
      activity: User::ACTIVITY.sample,
      difficulty: User::DIFFICULTY.sample,
      size: User::SIZE.sample,
      space: User::SPACE.sample,
    )
  )
end
