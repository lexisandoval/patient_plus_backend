ActiveRecord::Schema.define(version: 2021_05_03_174550) do

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
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_doctors_on_user_id"
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
  add_foreign_key "doctors", "users"
  add_foreign_key "medications", "conditions"
  add_foreign_key "medications", "doctors"
  add_foreign_key "medications", "users"
end
