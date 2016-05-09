class AddPermissaoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :permissao, :string
  end
end
