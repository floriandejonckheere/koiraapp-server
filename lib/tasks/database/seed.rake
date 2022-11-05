# frozen_string_literal: true

namespace :database do
  desc "Seed production and development database"
  task seed: ["seed:production", "seed:development"]

  namespace :seed do
    desc "Seed production database"
    task production: :environment do
      # Turn off SQL log
      ActiveRecord::Base.logger = nil

      Dir[Rails.root.join("db/seeds/*.rb")].each do |f|
        ActiveRecord::Base.transaction do
          require f
        end
      end
    end

    desc "Seed development database"
    task development: :environment do
      # Turn off SQL log
      ActiveRecord::Base.logger = nil

      Dir[Rails.root.join("db/seeds/development/*.rb")].each do |f|
        ActiveRecord::Base.transaction do
          require f
        end
      end
    end
  end
end
