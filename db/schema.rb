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

ActiveRecord::Schema.define(version: 20160121221700) do

  create_table "customers", force: true do |t|
    t.string   "name"
    t.decimal  "discount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lineitems", force: true do |t|
    t.integer  "order_id"
    t.integer  "pumpkin_id"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lineitems", ["order_id"], name: "index_lineitems_on_order_id"
  add_index "lineitems", ["pumpkin_id"], name: "index_lineitems_on_pumpkin_id"

  create_table "orders", force: true do |t|
    t.integer  "customer_id"
    t.date     "placed_on"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price"
  end

  create_table "pumpkins", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.string   "size"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
