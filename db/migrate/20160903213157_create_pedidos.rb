class CreatePedidos < ActiveRecord::Migration[5.0]
  def change
    create_table :pedidos do |t|
      t.integer :estado, default: 1, null: false
      t.integer :quantidade, default: 1, null: false
      t.decimal :desconto, default: 0, null: false
      t.decimal :preco_unitario, default: 0, null: false
      t.decimal :preco_total, default: 0, null: false
      t.integer :tipo, default: 1, null: false
      t.integer :usuario_id
      t.integer :geral_id
      t.integer :carrinho_id

      t.timestamps
    end
  end
end
