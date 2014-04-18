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

ActiveRecord::Schema.define(version: 20140418110835) do

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "status"
    t.string   "username"
    t.string   "password"
    t.text     "settings"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "has_favorite", id: false, force: true do |t|
    t.integer "customer_id", null: false
    t.integer "recipe_id",   null: false
  end

  create_table "has_picture", id: false, force: true do |t|
    t.integer "customer_id", null: false
    t.integer "picture_id",  null: false
  end

  create_table "has_recipe", id: false, force: true do |t|
    t.integer "customer_id", null: false
    t.integer "recipe_id",   null: false
  end

  create_table "ingredient_has_picture", id: false, force: true do |t|
    t.integer "ingredient_id", null: false
    t.integer "picture_id",    null: false
  end

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "storage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingredients", ["name"], name: "index_ingredients_on_name", unique: true

  create_table "join_recipe_ingredients_units_tables", force: true do |t|
    t.decimal "amount",        null: false
    t.integer "recipe_id",     null: false
    t.integer "ingredient_id", null: false
    t.integer "unit_id",       null: false
  end

  create_table "pictures", force: true do |t|
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipe_has_picture", id: false, force: true do |t|
    t.integer "recipe_id",  null: false
    t.integer "picture_id", null: false
  end

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.integer  "time"
    t.text     "description"
    t.text     "howto"
    t.integer  "difficulty"
    t.text     "tools"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "units", ["name"], name: "index_units_on_name", unique: true

end
