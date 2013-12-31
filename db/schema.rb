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

ActiveRecord::Schema.define(version: 20131231175111) do

  create_table "coffee_types", force: true do |t|
    t.string   "bean_name"
    t.string   "discription"
    t.string   "location"
    t.integer  "people_tried", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "comment"
    t.integer  "user_id"
    t.integer  "coffee_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_tries", force: true do |t|
    t.integer  "user_id"
    t.integer  "coffee_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "cuid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
