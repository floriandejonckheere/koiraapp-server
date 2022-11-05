# frozen_string_literal: true

class CreateDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs, id: :uuid do |t|
      t.string :name, null: false
      t.string :species
      t.date :birthdate
      t.string :sex
      t.string :description

      t.references :shelter, foreign_key: { on_delete: :cascade }, type: :uuid

      t.timestamps
    end
  end
end
