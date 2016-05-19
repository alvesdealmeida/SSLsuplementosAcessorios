json.cliente(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :endereco, :telefone, :email
  json.url cliente_url(cliente, format: :json)
end
