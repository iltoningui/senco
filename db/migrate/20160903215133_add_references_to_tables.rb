class AddReferencesToTables < ActiveRecord::Migration[5.0]
  def change
    add_index :carrinhos, :usuario_id
    add_index :gerais, :loja_id
    add_index :localizacoes, :locationable_id
    add_index :localizacoes, :locationable_type
    add_index :fotografias, :imageable_id
    add_index :fotografias, :imageable_type
    add_index :gerais, :serviceable_id
    add_index :gerais, :serviceable_type
    add_index :lojas, :loja_id
    add_index :lojas, :representante_id
    add_index :pedidos, :usuario_id
    add_index :pedidos, :geral_id
    add_index :pedidos, :carrinho_id
    add_index :usuarios, :loja_id  
      
  end
end
