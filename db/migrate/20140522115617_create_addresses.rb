# frozen_string_literal:true

class CreateAddresses < ActiveRecord::Migration[4.2]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :street_number
      t.string :route
      t.string :locality
      t.string :country
      t.string :postal_code
      t.references :placeable, polymorphic: true

      t.timestamps
    end
  end
end
