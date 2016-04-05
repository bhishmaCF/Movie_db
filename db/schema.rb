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

ActiveRecord::Schema.define(version: 20160404101400) do

  create_table "actors", force: :cascade do |t|
    t.string   "actor_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "casts", force: :cascade do |t|
    t.string   "cast_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details", force: :cascade do |t|
    t.string   "language"
    t.date     "release_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "movie_id"
  end

  add_index "details", ["movie_id"], name: "index_details_on_movie_id"

  create_table "genres", force: :cascade do |t|
    t.string   "names"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "movie_id"
  end

  add_index "genres", ["movie_id"], name: "index_genres_on_movie_id"

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.integer  "rating",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
