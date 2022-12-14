# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :name, null: false

      t.string :activity
      t.string :difficulty
      t.string :size
      t.string :space

      t.timestamps
    end
  end
end
