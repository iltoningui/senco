class CreateLojas < ActiveRecord::Migration[5.0]
  def change
    create_table :lojas do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.integer :estado, default: 1, null: false
      t.integer :loja_id
      t.integer :representante_id

      t.timestamps
    end
  end
end
