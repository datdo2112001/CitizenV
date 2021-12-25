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

ActiveRecord::Schema.define(version: 2021_12_18_074232) do

  create_table "citizens", charset: "utf8mb4", force: :cascade do |t|
    t.string "cmnd"
    t.string "name"
    t.datetime "birthday"
    t.string "sex"
    t.string "hometown"
    t.string "paddress"
    t.string "traddress"
    t.string "religion"
    t.string "edulevel"
    t.string "job"
    t.integer "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locals", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "tk"
    t.integer "accountname"
    t.string "region"
    t.string "permission"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.index ["accountname"], name: "index_users_on_accountname", unique: true
  end

end
