# frozen_string_literal: true

class User < ApplicationRecord
  include HasPreferences

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

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
