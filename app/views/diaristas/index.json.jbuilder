json.array!(@diaristas) do |diarista|
  json.extract! diarista, :id, :nome, :endereco, :telefone, :diaria
  json.url diarista_url(diarista, format: :json)
end
