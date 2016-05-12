class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :categoria
      t.string :descricao
      t.string :valor

      t.timestamps null: false
    end
  end
end
