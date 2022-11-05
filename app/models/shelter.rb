# frozen_string_literal: true

class Shelter < ApplicationRecord
  validates :name, presence: true

  has_many :dogs, dependent: :destroy
end

# == Schema Information
#
# Table name: shelters
#
#  id         :uuid             not null, primary key
#  address    :string
#  email      :string
#  image_url  :string
#  latitude   :float
#  longitude  :float
#  name       :string           not null
#  phone      :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
