json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :cpf, :rg, :nome, :gestor, :email, :nissan_id, :renault_id, :site, :gestor, :site, :data_nascimento, :tipo, :nome_empresa, :qcn, :setor, :funcao, :status
  json.url usuario_url(usuario, format: :json)
end
