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

ActiveRecord::Schema.define(version: 2018_10_10_204936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departamentos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deudas", force: :cascade do |t|
    t.string "periodo"
    t.bigint "municipio_id"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "value_centavos", default: 0, null: false
    t.index ["municipio_id"], name: "index_deudas_on_municipio_id"
  end

  create_table "gastos", force: :cascade do |t|
    t.string "periodo"
    t.bigint "municipio_id"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "value_centavos", default: 0, null: false
    t.index ["municipio_id"], name: "index_gastos_on_municipio_id"
  end

  create_table "ingresos", force: :cascade do |t|
    t.string "periodo"
    t.bigint "municipio_id"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "value_centavos", default: 0, null: false
    t.index ["municipio_id"], name: "index_ingresos_on_municipio_id"
  end

  create_table "municipios", force: :cascade do |t|
    t.string "nombre"
    t.bigint "departamento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departamento_id"], name: "index_municipios_on_departamento_id"
  end

  create_table "poblacions", force: :cascade do |t|
    t.string "periodo"
    t.bigint "municipio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "value"
    t.index ["municipio_id"], name: "index_poblacions_on_municipio_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "deudas", "municipios"
  add_foreign_key "gastos", "municipios"
  add_foreign_key "ingresos", "municipios"
  add_foreign_key "municipios", "departamentos"
  add_foreign_key "poblacions", "municipios"
end
