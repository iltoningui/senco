class CreateHorarios < ActiveRecord::Migration[5.0]
  def change
    create_table :horarios do |t|
      t.integer :dia
      t.time :entrada
      t.time :saida
      t.integer :loja_id

      t.timestamps
    end 
    add_index :horarios, :loja_id 
  end
end
