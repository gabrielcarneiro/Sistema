# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150330231746) do

  create_table "agendamentos", force: :cascade do |t|
    t.integer  "Diarista_id"
    t.integer  "Patrao_id"
    t.date     "data"
    t.integer  "hora"
    t.float    "diaria"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "agendamentos", ["Diarista_id"], name: "index_agendamentos_on_Diarista_id"
  add_index "agendamentos", ["Patrao_id"], name: "index_agendamentos_on_Patrao_id"

  create_table "diaristas", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.float    "diaria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patroes", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.float    "proposta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
