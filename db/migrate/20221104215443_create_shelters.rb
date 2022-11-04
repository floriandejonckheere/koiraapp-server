# frozen_string_literal: true

class CreateShelters < ActiveRecord::Migration[6.1]
  def change
    create_table :shelters, id: :uuid do |t|
      t.string :name, null: false
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :phone
      t.string :email
      t.string :url

      t.timestamps
    end
  end
end
