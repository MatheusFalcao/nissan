class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :cpf
      t.string :rg
      t.string :nome
      t.string :gestor
      t.string :email
      t.string :nissan_id
      t.string :renault_id
      t.string :site
      t.string :gestor
      t.string :site
      t.date :data_nascimento
      t.string :tipo
      t.string :nome_empresa
      t.string :qcn
      t.string :setor
      t.string :funcao
      t.string :status

      t.timestamps
    end
  end
end
