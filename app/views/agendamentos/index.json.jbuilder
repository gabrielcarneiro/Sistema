json.array!(@agendamentos) do |agendamento|
  json.extract! agendamento, :id, :Diarista_id, :Patrao_id, :data, :hora, :diaria
  json.url agendamento_url(agendamento, format: :json)
end
