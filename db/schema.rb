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

ActiveRecord::Schema[7.0].define(version: 2023_02_06_005507) do
  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "date"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "invitees", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_invitees_on_event_id"
    t.index ["user_id"], name: "index_invitees_on_user_id"
  end

  create_table "inviters", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_inviters_on_user_id"
  end

  create_table "invites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.integer "registration_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_invites_on_event_id"
    t.index ["registration_id"], name: "index_invites_on_registration_id"
    t.index ["user_id"], name: "index_invites_on_user_id"
  end

  create_table "invitezs", force: :cascade do |t|
    t.integer "inviter_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_invitezs_on_event_id"
    t.index ["inviter_id"], name: "index_invitezs_on_inviter_id"
  end

  create_table "kombidars", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.integer "kobida_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kombidas", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_kombidas_on_event_id"
    t.index ["user_id"], name: "index_kombidas_on_user_id"
  end

  create_table "registrations", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "how_heard"
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["event_id"], name: "index_registrations_on_event_id"
  end

  create_table "userinvs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "event_id"
    t.index ["user_id"], name: "index_userinvs_on_user_id"
  end

  create_table "userinvts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "userinv_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_id"
    t.index ["user_id"], name: "index_userinvts_on_user_id"
    t.index ["userinv_id"], name: "index_userinvts_on_userinv_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "invitees", "events"
  add_foreign_key "invitees", "users"
  add_foreign_key "inviters", "users"
  add_foreign_key "invites", "events"
  add_foreign_key "invites", "registrations"
  add_foreign_key "invites", "users"
  add_foreign_key "invitezs", "events"
  add_foreign_key "invitezs", "inviters"
  add_foreign_key "kombidas", "events"
  add_foreign_key "kombidas", "users"
  add_foreign_key "registrations", "events"
  add_foreign_key "userinvs", "users"
  add_foreign_key "userinvts", "userinvs"
  add_foreign_key "userinvts", "users"
end
