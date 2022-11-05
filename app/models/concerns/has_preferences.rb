# frozen_string_literal: true

module HasPreferences
  extend ActiveSupport::Concern

  ACTIVITY = %w(quiet normal active).freeze
  DIFFICULTY = %w(easy normal difficult).freeze
  SIZE = %w(small medium large).freeze
  SPACE = %w(apartment house farm).freeze

  included do
    validates :activity, inclusion: { in: ACTIVITY }, allow_nil: true
    validates :difficulty, inclusion: { in: DIFFICULTY }, allow_nil: true
    validates :size, inclusion: { in: SIZE }, allow_nil: true
    validates :space, inclusion: { in: SPACE }, allow_nil: true
  end
end
