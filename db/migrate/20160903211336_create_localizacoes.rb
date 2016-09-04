class CreateLocalizacoes < ActiveRecord::Migration[5.0]
  def change
    create_table :localizacoes do |t|
      t.decimal :latitude, default: 0, null: false
      t.decimal :Latitude, default: 0, null: false
      t.string :city
      t.string :address
      t.string :state
      t.string :state_code
      t.string :postal_code
      t.string :country
      t.string :country_code
      t.integer :tipo, default: 1, null: false
      t.string :endereco
      t.string :street
      t.integer :locationable_id
      t.string :locationable_type

      t.timestamps
    end
  end
end
