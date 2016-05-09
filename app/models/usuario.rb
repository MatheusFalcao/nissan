class Usuario < ActiveRecord::Base
  has_many :estoques
  has_many :maquinas
end
