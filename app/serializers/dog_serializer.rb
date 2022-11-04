# frozen_string_literal: true

class DogSerializer < CacheCrispies::Base
  key nil
  collection_key nil

  serialize :id,
            :name,
            :species,
            :birthdate,
            :sex,
            :description,
            :shelter_id

  serialize :images do |model, _options|
    model.images.map do |i|
      Rails.application.routes.url_helpers.rails_blob_path(i, only_path: true)
    end
  end
end
