# frozen_string_literal: true

class ShelterSerializer < CacheCrispies::Base
  serialize :id,
            :name,
            :address,
            :email,
            :latitude,
            :longitude,
            :phone,
            :website
end
