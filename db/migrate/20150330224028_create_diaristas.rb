class CreateDiaristas < ActiveRecord::Migration
  def change
    create_table :diaristas do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.float :diaria

      t.timestamps null: false
    end
  end
end
