# frozen_string_literal: true

class ShelterSerializer < CacheCrispies::Base
  key nil
  collection_key nil

  serialize :id,
            :name,
            :address,
            :email,
            :phone,
            :url,
            :image_url

  serialize :icon do
    "pawprint.fill"
  end

  serialize :latitude do |model, _options|
    model.latitude || 60.192059
  end

  serialize :longitude do |model, _options|
    model.longitude || 24.945831
  end

  serialize :dogs, with: DogSerializer
end
