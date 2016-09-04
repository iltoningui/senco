class CreateGerais < ActiveRecord::Migration[5.0]
  def change
    create_table :gerais do |t|
      t.string :nome
      t.string :descricao
      t.integer :classificacao
      t.integer :serviceable_id
      t.string :serviceable_type
      t.decimal :preco
      t.integer :estado, default: 1, null: false
      t.integer :loja_id

      t.timestamps
    end    
  end
end
