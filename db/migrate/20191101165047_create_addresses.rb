class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.serial

      t.references :addressable, polymorphic: true, null: false
      t.string :country, limit: 255
      t.string :zip,     limit: 50
      t.string :city,    limit: 255
      t.string :address, limit: 255

      t.timestamps
    end
  end
end
