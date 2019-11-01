class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.serial

      t.references :profilable, polymorphic: true, null: false
      t.string :name,    null: false, limit: 255
      t.date :birthdate, null: false
      t.string :photo,                limit: 255
      t.text :bio

      t.timestamps
    end
  end
end
