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

ActiveRecord::Schema.define(version: 20180802170959) do

  create_table "markets", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "open"
    t.boolean  "parking"
    t.string   "tel"
    t.string   "closed"
    t.string   "locate1"
    t.string   "locate2"
    t.string   "locate3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.text     "content"
    t.integer  "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_menus_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string   "name"
    t.string   "open"
    t.string   "tel"
    t.integer  "market_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["market_id"], name: "index_shops_on_market_id"
  end

end
