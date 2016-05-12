json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :categoria, :descricao, :valor
  json.url produto_url(produto, format: :json)
end
