# frozen_string_literal: true

puts "== Creating shelters =="

return if Shelter.any?

Shelter.create!(
  name: "HESY ry",
  address: "Muonamiehentie 7, 00390 Helsinki",
  latitude: 60.231120,
  longitude: 24.858370,
  phone: "050 414 0000",
  website: "http://www.hesy.fi/",
)

Shelter.create!(
  name: "Viikin löytöeläintalo",
  address: "Koetilantie 13, 00790 Helsinki",
  latitude: 60.222800,
  longitude: 25.021370,
  phone: "040 1980778",
  website: "https://www.viikinloytoelaintalo.fi/",
)

Shelter.create!(
  name: "Rekku Rescue ry",
  website: "https://rekkurescue.com/",
)

Shelter.create!(
  name: "SEY ry",
  address: "Lintulahdenkatu 1000500, Helsinki",
  latitude: 60.183890,
  longitude: 24.962170,
  phone: "0207 528 420",
  website: "https://sey.fi/",
)
