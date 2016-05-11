class CreateMensagens < ActiveRecord::Migration
  def change
    create_table :mensagens do |t|
      t.references :Cliente, index: true, foreign_key: true
      t.string :email
      t.string :assunto
      t.text :conteudo

      t.timestamps null: false
    end
  end
end
