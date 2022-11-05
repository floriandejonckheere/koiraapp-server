# frozen_string_literal: true

class ImageSerializer < CacheCrispies::Base
  key nil
  collection_key nil

  serialize :id

  serialize :url do |model, _options|
    Rails.application.routes.url_helpers.rails_blob_path(model, only_path: true)
  rescue
    nil
  end

  serialize :blurhash do |model, _options|
    model&.metadata&.dig("blurhash")
  end
end
