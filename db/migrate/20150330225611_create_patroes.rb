class CreatePatroes < ActiveRecord::Migration
  def change
    create_table :patroes do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.float :proposta

      t.timestamps null: false
    end
  end
end
