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

ActiveRecord::Schema.define(version: 20150303162330) do

  create_table "ciudads", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "pai_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ciudads", ["pai_id"], name: "index_ciudads_on_pai_id"

  create_table "empleados", force: :cascade do |t|
    t.string   "nombre"
    t.string   "nacionalidad"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "pais_id"
    t.integer  "pai_id"
  end

  add_index "empleados", ["pai_id"], name: "index_empleados_on_pai_id"
  add_index "empleados", ["pais_id"], name: "index_empleados_on_pais_id"

  create_table "pais", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "ci"
    t.date     "fecha_nac"
    t.integer  "pais_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pruebas", force: :cascade do |t|
    t.integer  "persona_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pruebas", ["persona_id"], name: "index_pruebas_on_persona_id"

end
