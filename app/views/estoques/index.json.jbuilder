json.array!(@estoques) do |estoque|
  json.extract! estoque, :id, :item, :tipo, :serial, :site, :status, :observacao, :usuario_id
  json.url estoque_url(estoque, format: :json)
end
