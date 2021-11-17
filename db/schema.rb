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

ActiveRecord::Schema.define(version: 2021_11_17_170528) do

  create_table "coach_requests", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "whatsapp"
    t.string "cpf"
    t.string "game"
    t.string "description"
    t.integer "tier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "coaches", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "name"
    t.text "description"
    t.string "whatsapp"
    t.string "email"
    t.string "game"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pending_lectures", force: :cascade do |t|
    t.integer "coach_id"
    t.string "name"
    t.string "whatsapp"
    t.integer "tier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coach_id"], name: "index_pending_lectures_on_coach_id"
  end

  add_foreign_key "pending_lectures", "coaches"
end
