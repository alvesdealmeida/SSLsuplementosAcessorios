json.array!(@faleconoscos) do |faleconosco|
  json.extract! faleconosco, :id, :Cliente_id, :email, :assunto, :conteudo
  json.url faleconosco_url(faleconosco, format: :json)
end
