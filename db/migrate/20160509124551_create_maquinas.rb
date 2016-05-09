class CreateMaquinas < ActiveRecord::Migration
  def change
    create_table :maquinas do |t|
      t.string :hostname
      t.string :serial
      t.string :part_number
      t.string :marca
      t.string :modelo
      t.string :mac
      t.string :sistema_operacional
      t.string :status
      t.string :site
      t.string :observacao
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
