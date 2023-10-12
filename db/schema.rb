# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_12_131029) do
  create_table "invoices", force: :cascade do |t|
    t.date "event_date"
    t.string "cliente"
    t.string "ruc"
    t.boolean "cond_venta"
    t.decimal "valor_parcial", precision: 10, scale: 2
    t.decimal "total_pagar", precision: 10, scale: 2
    t.string "t_pagar_c"
    t.decimal "iva_five", precision: 10, scale: 2
    t.decimal "iva_ten", precision: 10, scale: 2
    t.decimal "iva_total", precision: 10, scale: 2
    t.string "telefono"
    t.string "nota_remi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "producto"
    t.integer "cantidad"
    t.decimal "precio", precision: 10, scale: 2
    t.decimal "iva_ten", precision: 10, scale: 2
    t.decimal "iva_five", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
