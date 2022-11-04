# frozen_string_literal: true

class AddIconToShelters < ActiveRecord::Migration[7.0]
  def change
    change_table :shelters do |t|
      t.string :icon
    end
  end
end
