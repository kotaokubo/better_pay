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

ActiveRecord::Schema.define(version: 2020_03_08_072548) do

  create_table "campaigns", force: :cascade do |t|
    t.integer "shop_id"
    t.integer "pay_id"
    t.integer "content", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "finish_date"
    t.index ["pay_id"], name: "index_campaigns_on_pay_id"
    t.index ["shop_id"], name: "index_campaigns_on_shop_id"
  end

  create_table "pays", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shop_search_counts", force: :cascade do |t|
    t.integer "shop_id"
    t.integer "count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shop_id"], name: "index_shop_search_counts_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.integer "count"
    t.integer "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "campaigns", "pays"
  add_foreign_key "campaigns", "shops"
  add_foreign_key "shop_search_counts", "shops"
end
