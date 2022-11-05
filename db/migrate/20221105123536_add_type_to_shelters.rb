# frozen_string_literal: true

class AddTypeToShelters < ActiveRecord::Migration[7.0]
  def change
    add_column :shelters, :type, :string, null: false, default: "shelter"
  end
end
