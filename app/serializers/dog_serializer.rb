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

  serialize :images, with: ImageSerializer
end
