class CreateCarrinhos < ActiveRecord::Migration[5.0]
  def change
    create_table :carrinhos do |t|
      t.integer :estado, default: 1, null: false
      t.integer :usuario_id
      t.timestamps
    end    
  end
end
