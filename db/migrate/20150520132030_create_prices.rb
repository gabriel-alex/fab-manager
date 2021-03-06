# frozen_string_literal:true

class CreatePrices < ActiveRecord::Migration[4.2]
  def change
    create_table :prices do |t|
      t.belongs_to :group, index: true, foreign_key: true
      t.belongs_to :plan, index: true, foreign_key: true
      t.belongs_to :priceable, polymorphic: true, index: true
      t.integer :amount

      t.timestamps null: false
    end
  end
end
