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

ActiveRecord::Schema.define(version: 20140812110439) do

  create_table "cart_items", force: true do |t|
    t.integer  "item_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   default: 1
  end

  add_index "cart_items", ["cart_id"], name: "index_cart_items_on_cart_id"
  add_index "cart_items", ["item_id"], name: "index_cart_items_on_item_id"

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.float    "price",                 limit: 8
    t.string   "img_url"
    t.integer  "lcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "supplier_name"
    t.float    "weight"
    t.string   "supplier"
    t.float    "purchase_kg_usd"
    t.float    "purchase_kg_rur"
    t.float    "shipping_kg_usd"
    t.float    "shipping_kg_rur"
    t.float    "purachse_per_item_usd"
    t.float    "purachse_per_item_rur"
    t.float    "shipping_per_item_usd"
    t.float    "shipping_per_item_rur"
    t.float    "self_cost_usd"
    t.float    "self_cost_rur"
    t.float    "sale_cost"
    t.float    "sale_cost_final"
  end

end
