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

ActiveRecord::Schema.define(version: 20161104130335) do

  create_table "cinemas", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "films", force: :cascade do |t|
    t.string   "title"
    t.string   "director"
    t.integer  "note"
    t.text     "synopsis"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "cinema_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "value"
    t.integer  "film_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "spectateur_id"
  end

  add_index "notes", ["film_id"], name: "index_notes_on_film_id"

  create_table "spectateurs", force: :cascade do |t|
    t.string   "name"
    t.text     "descripton"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "categorie"
  end

end
