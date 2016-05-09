json.array!(@maquinas) do |maquina|
  json.extract! maquina, :id, :hostname, :serial, :part_number, :marca, :modelo, :mac, :sistema_operacional, :status, :site, :observacao, :usuario_id
  json.url maquina_url(maquina, format: :json)
end
