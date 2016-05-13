class Pedido < ActiveRecord::Base
  belongs_to :Cliente
  belongs_to :Produto
end
