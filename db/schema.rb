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

ActiveRecord::Schema.define(version: 2020_04_22_080356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "aminitebookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "roomsofaminite_id"
    t.datetime "from_time_date"
    t.datetime "to_time_date"
    t.boolean "vacte"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["roomsofaminite_id"], name: "index_aminitebookings_on_roomsofaminite_id"
    t.index ["user_id"], name: "index_aminitebookings_on_user_id"
  end

  create_table "aminites", force: :cascade do |t|
    t.string "name_of_aminite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookingaminites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "roomsofaminite_id"
    t.date "booking_date"
    t.integer "timing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "aminite_id"
    t.index ["roomsofaminite_id"], name: "index_bookingaminites_on_roomsofaminite_id"
    t.index ["user_id"], name: "index_bookingaminites_on_user_id"
  end

  create_table "complaints", force: :cascade do |t|
    t.text "description"
    t.string "block"
    t.integer "floor"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "solved", default: false
    t.string "type_of_property"
    t.datetime "solved_time"
    t.index ["user_id"], name: "index_complaints_on_user_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.text "description"
    t.bigint "complaint_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["complaint_id"], name: "index_feedbacks_on_complaint_id"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "pravites", force: :cascade do |t|
    t.string "block"
    t.integer "flate"
    t.string "type_of_service"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pravites_on_user_id"
  end

  create_table "roomsofaminites", force: :cascade do |t|
    t.string "name_of_room"
    t.bigint "aminite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aminite_id"], name: "index_roomsofaminites_on_aminite_id"
  end

  create_table "shareds", force: :cascade do |t|
    t.string "block"
    t.integer "floor"
    t.string "type_of_service"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shareds_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "block"
    t.integer "flate"
    t.boolean "admin", default: false
    t.string "role", default: "register"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "aminitebookings", "roomsofaminites"
  add_foreign_key "aminitebookings", "users"
  add_foreign_key "bookingaminites", "roomsofaminites"
  add_foreign_key "bookingaminites", "users"
  add_foreign_key "complaints", "users"
  add_foreign_key "feedbacks", "complaints"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "pravites", "users"
  add_foreign_key "roomsofaminites", "aminites"
  add_foreign_key "shareds", "users"
end
