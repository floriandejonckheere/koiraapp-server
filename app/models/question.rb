# frozen_string_literal: true

class Question < ApplicationRecord
end

# == Schema Information
#
# Table name: questions
#
#  id         :uuid             not null, primary key
#  answer     :string
#  question   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
