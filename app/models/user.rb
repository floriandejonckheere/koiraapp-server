# frozen_string_literal: true

class User < ApplicationRecord
  ACTIVITY = %w(quiet normal active).freeze
  DIFFICULTY = %w(easy normal difficult).freeze
  SIZE = %w(small medium large).freeze
  SPACE = %w(apartment house farm).freeze

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  validates :activity, inclusion: { in: ACTIVITY }
  validates :difficulty, inclusion: { in: DIFFICULTY }
  validates :size, inclusion: { in: SIZE }
  validates :space, inclusion: { in: SPACE }

  has_many :visits, dependent: :destroy
end

# == Schema Information
#
# Table name: users
#
#  id         :uuid             not null, primary key
#  activity   :string
#  difficulty :string
#  email      :string           not null
#  name       :string           not null
#  size       :string
#  space      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
