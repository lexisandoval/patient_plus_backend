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

ActiveRecord::Schema.define(version: 2021_05_03_174636) do

  create_table "conditions", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_conditions_on_user_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "specialty"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "emergencycontacts", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "relationship"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_emergencycontacts_on_user_id"
  end

  create_table "medications", force: :cascade do |t|
    t.string "name"
    t.string "prescription"
    t.integer "user_id", null: false
    t.integer "condition_id", null: false
    t.integer "doctor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["condition_id"], name: "index_medications_on_condition_id"
    t.index ["doctor_id"], name: "index_medications_on_doctor_id"
    t.index ["user_id"], name: "index_medications_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "conditions", "users"
  add_foreign_key "emergencycontacts", "users"
  add_foreign_key "medications", "conditions"
  add_foreign_key "medications", "doctors"
  add_foreign_key "medications", "users"
end
