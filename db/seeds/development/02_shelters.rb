# frozen_string_literal: true

puts "== Creating shelters =="

return if Shelter.any?

Shelter.create!(
  name: "HESY ry",
  address: "Muonamiehentie 7, 00390 Helsinki",
  latitude: 60.231120,
  longitude: 24.858370,
  phone: "050 414 0000",
  url: "http://www.hesy.fi/",
  icon: "https://lh3.ggpht.com/p/AF1QipNu1mDwoBXW5a3meEqiUjAjX1CNYk1tViBcC-nr=s512",
)

Shelter.create!(
  name: "Viikin löytöeläintalo",
  address: "Koetilantie 13, 00790 Helsinki",
  latitude: 60.222800,
  longitude: 25.021370,
  phone: "040 1980778",
  url: "https://www.viikinloytoelaintalo.fi/",
  icon: "https://lh5.googleusercontent.com/p/AF1QipOn1XQCXMYtVCQJ0hK4EcGc1i4pFhXCRZHfQVwM=w408-h544-k-no",
)

Shelter.create!(
  name: "Rekku Rescue ry",
  url: "https://rekkurescue.com/",
)

Shelter.create!(
  name: "SEY ry",
  address: "Lintulahdenkatu 1000500, Helsinki",
  latitude: 60.183890,
  longitude: 24.962170,
  phone: "0207 528 420",
  url: "https://sey.fi/",
  icon: "https://lh5.googleusercontent.com/p/AF1QipPpl07cGeUhNF_sh_XGft1P5tkJH5sY2OiJrFzk=w426-h240-k-no",
)
