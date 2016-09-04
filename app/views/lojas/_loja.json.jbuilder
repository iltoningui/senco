json.extract! loja, :id, :nome, :email, :telefone, :estado, :loja_id, :representante_id, :created_at, :updated_at
json.url loja_url(loja, format: :json)