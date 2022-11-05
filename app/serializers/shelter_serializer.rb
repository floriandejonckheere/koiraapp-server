# frozen_string_literal: true

class ShelterSerializer < CacheCrispies::Base
  key nil
  collection_key nil

  serialize :id,
            :name,
            :address,
            :email,
            :phone,
            :url

  serialize :icon do |model, _options|
    case model.type
    when "shelter"
      "house"
    when "person"
      "pawprint.fill"
    end
  end

  serialize :latitude do |model, _options|
    model.latitude || 60.192059
  end

  serialize :longitude do |model, _options|
    model.longitude || 24.945831
  end

  serialize :image_url do |model, _options|
    next unless model.image.attached?

    Rails.application.routes.url_helpers.rails_blob_path(model.image, only_path: true)
  end

  serialize :dogs, with: DogSerializer
end
