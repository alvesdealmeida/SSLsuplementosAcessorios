json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :Cliente_id, :Produto_id, :quantidade, :valorunitario, :valor, :total
  json.url pedido_url(pedido, format: :json)
end
