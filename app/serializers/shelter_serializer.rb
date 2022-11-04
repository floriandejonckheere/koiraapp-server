# frozen_string_literal: true

class ShelterSerializer < CacheCrispies::Base
  key nil
  collection_key nil

  serialize :id,
            :name,
            :address,
            :email,
            :latitude,
            :longitude,
            :phone,
            :url

  serialize :image do
    "house"
  end
end
