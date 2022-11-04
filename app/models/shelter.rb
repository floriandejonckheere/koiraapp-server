# frozen_string_literal: true

class Shelter < ApplicationRecord
  validates :name, presence: true
end

# == Schema Information
#
# Table name: shelters
#
#  id         :uuid             not null, primary key
#  address    :string
#  email      :string
#  latitude   :float
#  longitude  :float
#  name       :string           not null
#  phone      :string
#  website    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
