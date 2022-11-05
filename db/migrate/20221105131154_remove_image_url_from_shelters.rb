# frozen_string_literal: true

class RemoveImageUrlFromShelters < ActiveRecord::Migration[7.0]
  def change
    remove_column :shelters, :image_url, :string
  end
end
