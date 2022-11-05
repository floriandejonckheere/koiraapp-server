# frozen_string_literal: true

class ImageSerializer < CacheCrispies::Base
  key nil
  collection_key nil

  serialize :id

  serialize :url do |model, _options|
    ActiveStorage::Current.url_options = { host: "localhost:3000" }
    model.blob.url.remove("http://localhost:3000")
  rescue
    nil
  end

  serialize :blurhash do |model, _options|
    model&.metadata&.dig("blurhash")
  end
end
