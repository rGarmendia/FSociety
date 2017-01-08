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

ActiveRecord::Schema.define(version: 20160519225352) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "specialty_id"
    t.text     "body"
    t.integer  "doctor_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "articles", ["doctor_id"], name: "index_articles_on_doctor_id"
  add_index "articles", ["specialty_id"], name: "index_articles_on_specialty_id"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id"

  create_table "consulting_rooms", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "phone"
    t.time     "starttime"
    t.time     "finaltime"
    t.time     "querytime"
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.integer  "doctor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "consulting_rooms", ["city_id"], name: "index_consulting_rooms_on_city_id"
  add_index "consulting_rooms", ["country_id"], name: "index_consulting_rooms_on_country_id"
  add_index "consulting_rooms", ["doctor_id"], name: "index_consulting_rooms_on_doctor_id"
  add_index "consulting_rooms", ["state_id"], name: "index_consulting_rooms_on_state_id"

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "sex"
    t.string   "email"
    t.string   "cellphone"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "doctors", ["city_id"], name: "index_doctors_on_city_id"
  add_index "doctors", ["country_id"], name: "index_doctors_on_country_id"
  add_index "doctors", ["state_id"], name: "index_doctors_on_state_id"
  add_index "doctors", ["user_id"], name: "index_doctors_on_user_id"

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start"
    t.datetime "end"
    t.string   "allDay"
    t.integer  "consulting_room_id"
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "events", ["consulting_room_id"], name: "index_events_on_consulting_room_id"
  add_index "events", ["doctor_id"], name: "index_events_on_doctor_id"
  add_index "events", ["patient_id"], name: "index_events_on_patient_id"

  create_table "has_specialties", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "specialty_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "has_specialties", ["doctor_id"], name: "index_has_specialties_on_doctor_id"
  add_index "has_specialties", ["specialty_id"], name: "index_has_specialties_on_specialty_id"

  create_table "has_weekdays", force: :cascade do |t|
    t.integer  "consulting_room_id"
    t.integer  "weekday_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "has_weekdays", ["consulting_room_id"], name: "index_has_weekdays_on_consulting_room_id"
  add_index "has_weekdays", ["weekday_id"], name: "index_has_weekdays_on_weekday_id"

  create_table "office_rates", force: :cascade do |t|
    t.integer  "consulting_room_id"
    t.float    "price"
    t.integer  "specialty_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "office_rates", ["consulting_room_id"], name: "index_office_rates_on_consulting_room_id"
  add_index "office_rates", ["specialty_id"], name: "index_office_rates_on_specialty_id"

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.string   "cellphone"
    t.string   "sex"
    t.date     "birthdate"
    t.text     "address"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "patients", ["city_id"], name: "index_patients_on_city_id"
  add_index "patients", ["country_id"], name: "index_patients_on_country_id"
  add_index "patients", ["state_id"], name: "index_patients_on_state_id"
  add_index "patients", ["user_id"], name: "index_patients_on_user_id"

  create_table "specialties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "states", ["country_id"], name: "index_states_on_country_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "rol"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "weekdays", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
