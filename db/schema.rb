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

ActiveRecord::Schema.define(version: 2019_10_24_122349) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "date_time"
    t.integer "doctor_id"
    t.integer "patient_id"
    t.integer "city_id"
    t.integer "specialty_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_appointments_on_city_id"
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["specialty_id"], name: "index_appointments_on_specialty_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_doctors_on_city_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_patients_on_city_id"
  end

  create_table "special_refs", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "specialty_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_special_refs_on_doctor_id"
    t.index ["specialty_id"], name: "index_special_refs_on_specialty_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "specialty_name"
    t.integer "special_ref_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["special_ref_id"], name: "index_specialties_on_special_ref_id"
  end

end
