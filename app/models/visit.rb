# frozen_string_literal: true

class Visit < ApplicationRecord
  validates :date, presence: true

  belongs_to :user
  belongs_to :dog
end

# == Schema Information
#
# Table name: visits
#
#  id         :uuid             not null, primary key
#  date       :date             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  dog_id     :uuid
#  user_id    :uuid
#
# Indexes
#
#  index_visits_on_dog_id   (dog_id)
#  index_visits_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (dog_id => dogs.id) ON DELETE => cascade
#  fk_rails_...  (user_id => users.id) ON DELETE => cascade
#
