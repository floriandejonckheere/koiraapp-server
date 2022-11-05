# frozen_string_literal: true

puts "== Creating visits =="

return if Visit.any?

User.all.each do |user|
  Dog.all.sample(rand(1..3)).each do |dog|
    rand(0..10).times do
      Visit.create!(
        user:,
        dog:,
        date: rand(-7..7).days.from_now,
      )
    end
  end
end
