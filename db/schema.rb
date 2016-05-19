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

ActiveRecord::Schema.define(version: 20160518152617) do

  create_table "bookings", force: :cascade do |t|
    t.text     "details"
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "showing_id"
    t.integer  "seat_id"
  end

  add_index "bookings", ["seat_id"], name: "index_bookings_on_seat_id"
  add_index "bookings", ["showing_id"], name: "index_bookings_on_showing_id"

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.text     "desc"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "screens", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.string   "row"
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "screen_id"
  end

  add_index "seats", ["screen_id"], name: "index_seats_on_screen_id"

  create_table "showings", force: :cascade do |t|
    t.datetime "screening"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "movie_id"
    t.integer  "screen_id"
  end

  add_index "showings", ["movie_id"], name: "index_showings_on_movie_id"
  add_index "showings", ["screen_id"], name: "index_showings_on_screen_id"

end
