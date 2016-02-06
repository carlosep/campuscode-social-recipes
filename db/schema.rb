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

ActiveRecord::Schema.define(version: 20160206180809) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuisines", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "difficulties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "preferences", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.integer  "portion"
    t.integer  "cooking_time"
    t.text     "ingredient"
    t.text     "directions"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "cuisine_id"
    t.integer  "course_id"
    t.integer  "preference_id"
    t.integer  "difficulty_id"
  end

  add_index "recipes", ["course_id"], name: "index_recipes_on_course_id"
  add_index "recipes", ["cuisine_id"], name: "index_recipes_on_cuisine_id"
  add_index "recipes", ["difficulty_id"], name: "index_recipes_on_difficulty_id"
  add_index "recipes", ["preference_id"], name: "index_recipes_on_preference_id"

end