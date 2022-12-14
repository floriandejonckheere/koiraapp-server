# frozen_string_literal: true

class Dog < ApplicationRecord
  include HasPreferences

  validates :name, presence: true

  belongs_to :shelter

  has_many :visits, dependent: :destroy

  has_many_attached :images
end

# == Schema Information
#
# Table name: dogs
#
#  id          :uuid             not null, primary key
#  activity    :string
#  birthdate   :date
#  description :string
#  difficulty  :string
#  name        :string           not null
#  sex         :string
#  size        :string
#  space       :string
#  species     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  shelter_id  :uuid
#
# Indexes
#
#  index_dogs_on_shelter_id  (shelter_id)
#
# Foreign Keys
#
#  fk_rails_...  (shelter_id => shelters.id) ON DELETE => cascade
#
