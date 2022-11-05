# frozen_string_literal: true

class CreateVisits < ActiveRecord::Migration[7.0]
  def change
    create_table :visits, id: :uuid do |t|
      t.date :date, null: false

      t.references :user, foreign_key: { on_delete: :cascade }, type: :uuid
      t.references :dog, foreign_key: { on_delete: :cascade }, type: :uuid

      t.timestamps
    end
  end
end
