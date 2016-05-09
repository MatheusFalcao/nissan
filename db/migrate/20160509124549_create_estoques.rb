class CreateEstoques < ActiveRecord::Migration
  def change
    create_table :estoques do |t|
      t.string :item
      t.string :tipo
      t.string :serial
      t.string :site
      t.string :status
      t.string :observacao
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
