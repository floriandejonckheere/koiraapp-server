# frozen_string_literal: true

FactoryBot.define do
  factory :shelter, class: "Shelter" do
    name { "#{FFaker::Lorem.words(2).join(' ')} ry" }
    address { FFaker::AddressFI.full_address }
    latitude { 60 + rand(0.0..1.0) }
    longitude { 24 + rand(0.0..1.0) }
    phone { FFaker::PhoneNumber.phone_number }
    email { FFaker::Internet.email }
    website { FFaker::Internet.http_url }
  end
end
