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

ActiveRecord::Schema.define(version: 20180215163717) do

  create_table "expenses", force: :cascade do |t|
    t.integer "wardNumber"
    t.datetime "journalDate"
    t.string "vendor"
    t.string "expenseType"
    t.string "description"
    t.string "account"
    t.decimal "amount"
    t.integer "ward_id"
    t.index ["ward_id"], name: "index_expenses_on_ward_id"
  end

  create_table "wards", force: :cascade do |t|
    t.integer "wardNumber"
    t.string "name"
    t.string "councilor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
