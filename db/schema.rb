# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_21_195535) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "number"
    t.string "zipcode"
    t.string "city"
    t.string "contact_name"
    t.string "contact_phone"
    t.string "contact_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inspections", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.integer "project_number"
    t.string "project_name"
    t.datetime "inspection_date"
    t.string "inspection_address_street"
    t.string "inspection_address_number"
    t.string "inspection_address_zipcode"
    t.string "inspection_address_city"
    t.string "contact_person_name"
    t.string "contact_person_phone"
    t.string "contact_person_email"
    t.string "report_compiler"
    t.datetime "release_date"
    t.boolean "approved"
    t.string "building_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_inspections_on_client_id"
  end

  add_foreign_key "inspections", "clients"
end
