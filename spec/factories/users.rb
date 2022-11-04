# frozen_string_literal: true

FactoryBot.define do
  factory :user, class: "User" do
    email { FFaker::Internet.email(name) }
    name { FFaker::Name.name }
  end
end
