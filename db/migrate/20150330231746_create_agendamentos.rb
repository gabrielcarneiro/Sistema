class CreateAgendamentos < ActiveRecord::Migration
  def change
    create_table :agendamentos do |t|
      t.references :Diarista, index: true
      t.references :Patrao, index: true
      t.date :data
      t.integer :hora
      t.float :diaria

      t.timestamps null: false
    end
    add_foreign_key :agendamentos, :Diaristas
    add_foreign_key :agendamentos, :Patroes
  end
end
