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

ActiveRecord::Schema.define(version: 20151209064323) do

  create_table "blogs", force: :cascade do |t|
    t.datetime "blog_date"
    t.string   "blog_title"
    t.text     "blog_main"
    t.string   "blog_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "store_id"
  end

  add_index "blogs", ["store_id"], name: "index_blogs_on_store_id"

  create_table "stores", force: :cascade do |t|
    t.string   "store_name"
    t.string   "stor_catch"
    t.string   "store_genre"
    t.string   "store_area"
    t.text     "store_description"
    t.text     "store_address"
    t.string   "store_access"
    t.string   "store_tel"
    t.string   "store_email"
    t.string   "storeurl"
    t.string   "store_movie"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "blog_id"
  end

  add_index "stores", ["blog_id"], name: "index_stores_on_blog_id"

end
