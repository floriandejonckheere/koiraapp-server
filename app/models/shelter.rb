# frozen_string_literal: true

class Shelter < ApplicationRecord
  self.inheritance_column = nil

  TYPES = %w(shelter person).freeze

  validates :name, presence: true
  validates :type, presence: true, inclusion: { in: TYPES }

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
#  type       :string           default("shelter"), not null
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
