# frozen_string_literal: true

puts "== Creating users =="

return if User.any?

User.create!(name: "Jimi Tuomaala", email: "jimi.tuomaala@example.com")
User.create!(name: "Hannes Koivula", email: "hannes.koivula@example.com")
User.create!(name: "Lari Mikkola", email: "lari.mikkola@example.com")
User.create!(name: "Untamo Partanen", email: "untamo.partanen@example.com")
User.create!(name: "Into Isotalo", email: "into.isotalo@example.com")
