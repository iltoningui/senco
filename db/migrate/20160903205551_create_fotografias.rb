class CreateFotografias < ActiveRecord::Migration[5.0]
  def change
    create_table :fotografias do |t|
      t.integer :imageable_id
      t.string :imageable_type
      
      t.timestamps
    end
  end
end
