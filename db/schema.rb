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

ActiveRecord::Schema.define(version: 20140509015817) do

  create_table "cars", force: true do |t|
    t.string   "brand"
    t.string   "model"
    t.integer  "year"
    t.date     "rentaldates"
    t.integer  "price"
    t.string   "location"
    t.boolean  "auto_transmission"
    t.integer  "mileage"
    t.string   "color"
    t.string   "image_url"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "reviews", force: true do |t|
    t.integer  "car_id"
    t.integer  "ratings"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
