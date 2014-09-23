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

ActiveRecord::Schema.define(version: 20140923093533) do

  create_table "cart_items", force: true do |t|
    t.integer  "item_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   default: 1
    t.integer  "order_id"
  end

  add_index "cart_items", ["cart_id"], name: "index_cart_items_on_cart_id"
  add_index "cart_items", ["item_id"], name: "index_cart_items_on_item_id"
  add_index "cart_items", ["order_id"], name: "index_cart_items_on_order_id"

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "img_url"
    t.integer  "lcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "supplier_name"
    t.decimal  "weight",                precision: 8, scale: 2
    t.string   "supplier"
    t.decimal  "purchase_kg_usd",       precision: 8, scale: 2
    t.decimal  "purchase_kg_rur",       precision: 8, scale: 2
    t.decimal  "shipping_kg_usd",       precision: 8, scale: 2
    t.decimal  "shipping_kg_rur",       precision: 8, scale: 2
    t.decimal  "purachse_per_item_usd", precision: 8, scale: 2
    t.decimal  "purachse_per_item_rur", precision: 8, scale: 2
    t.decimal  "shipping_per_item_usd", precision: 8, scale: 2
    t.decimal  "shipping_per_item_rur", precision: 8, scale: 2
    t.decimal  "self_cost_usd",         precision: 8, scale: 2
    t.decimal  "self_cost_rur",         precision: 8, scale: 2
    t.decimal  "sale_cost",             precision: 8, scale: 2
    t.decimal  "sale_cost_final",       precision: 8, scale: 2
    t.integer  "wh_quantity",                                   default: 0
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "orders", force: true do |t|
    t.text     "comments"
    t.string   "payment_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "total",        precision: 8, scale: 2
    t.string   "store"
  end

end
