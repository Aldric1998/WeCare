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

ActiveRecord::Schema.define(version: 2021_11_25_100417) do

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

  create_table "answers", force: :cascade do |t|
    t.bigint "statement_id", null: false
    t.bigint "possible_answer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["possible_answer_id"], name: "index_answers_on_possible_answer_id"
    t.index ["statement_id"], name: "index_answers_on_statement_id"
  end

  create_table "consultations", force: :cascade do |t|
    t.string "start_time"
    t.string "end_time"
    t.bigint "user_id", null: false
    t.bigint "specialist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["specialist_id"], name: "index_consultations_on_specialist_id"
    t.index ["user_id"], name: "index_consultations_on_user_id"
  end

  create_table "firstaidkit_answers", force: :cascade do |t|
    t.string "content"
    t.bigint "possible_answer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["possible_answer_id"], name: "index_firstaidkit_answers_on_possible_answer_id"
  end

  create_table "firstaidkit_specialists", force: :cascade do |t|
    t.bigint "speciality_id", null: false
    t.bigint "firstaidkit_answer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["firstaidkit_answer_id"], name: "index_firstaidkit_specialists_on_firstaidkit_answer_id"
    t.index ["speciality_id"], name: "index_firstaidkit_specialists_on_speciality_id"
  end

  create_table "forum_categories", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.string "color", default: "000000"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forum_posts", id: :serial, force: :cascade do |t|
    t.integer "forum_thread_id"
    t.integer "user_id"
    t.text "body"
    t.boolean "solved", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forum_subscriptions", id: :serial, force: :cascade do |t|
    t.integer "forum_thread_id"
    t.integer "user_id"
    t.string "subscription_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forum_threads", id: :serial, force: :cascade do |t|
    t.integer "forum_category_id"
    t.integer "user_id"
    t.string "title", null: false
    t.string "slug", null: false
    t.integer "forum_posts_count", default: 0
    t.boolean "pinned", default: false
    t.boolean "solved", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "possible_answers", force: :cascade do |t|
    t.string "content"
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "next_position"
    t.index ["question_id"], name: "index_possible_answers_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "content"
    t.integer "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "specialists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.boolean "availability"
    t.string "phonenumber"
    t.string "email"
    t.bigint "speciality_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["speciality_id"], name: "index_specialists_on_speciality_id"
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "statements", force: :cascade do |t|
    t.string "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_statements_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["first_name"], name: "index_users_on_first_name"
    t.index ["last_name"], name: "index_users_on_last_name"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "answers", "possible_answers"
  add_foreign_key "answers", "statements"
  add_foreign_key "consultations", "specialists"
  add_foreign_key "consultations", "users"
  add_foreign_key "firstaidkit_answers", "possible_answers"
  add_foreign_key "firstaidkit_specialists", "firstaidkit_answers"
  add_foreign_key "firstaidkit_specialists", "specialities"
  add_foreign_key "forum_posts", "forum_threads"
  add_foreign_key "forum_posts", "users"
  add_foreign_key "forum_subscriptions", "forum_threads"
  add_foreign_key "forum_subscriptions", "users"
  add_foreign_key "forum_threads", "forum_categories"
  add_foreign_key "forum_threads", "users"
  add_foreign_key "possible_answers", "questions"
  add_foreign_key "specialists", "specialities"
  add_foreign_key "statements", "users"
end
