json.array!(@mensagens) do |mensagem|
  json.extract! mensagem, :id, :Cliente_id, :email, :assunto, :conteudo
  json.url mensagem_url(mensagem, format: :json)
end
