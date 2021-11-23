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

ActiveRecord::Schema.define(version: 2021_11_23_132624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
  end

  add_foreign_key "answers", "possible_answers"
  add_foreign_key "answers", "statements"
  add_foreign_key "consultations", "specialists"
  add_foreign_key "consultations", "users"
  add_foreign_key "firstaidkit_answers", "possible_answers"
  add_foreign_key "firstaidkit_specialists", "firstaidkit_answers"
  add_foreign_key "firstaidkit_specialists", "specialities"
  add_foreign_key "possible_answers", "questions"
  add_foreign_key "specialists", "specialities"
  add_foreign_key "statements", "users"
end
