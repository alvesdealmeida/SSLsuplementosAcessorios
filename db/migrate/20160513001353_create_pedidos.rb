class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.references :Cliente, index: true, foreign_key: true
      t.references :Produto, index: true, foreign_key: true
      t.string :quantidade
      t.string :valorunitario
      t.string :valor
      t.string :total

      t.timestamps null: false
    end
  end
end
