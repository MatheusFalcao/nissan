class Usuario < ActiveRecord::Base
  has_many :estoques
end
