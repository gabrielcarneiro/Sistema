json.array!(@patroes) do |patrao|
  json.extract! patrao, :id, :nome, :endereco, :telefone, :proposta
  json.url patrao_url(patrao, format: :json)
end
