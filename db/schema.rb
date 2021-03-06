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

ActiveRecord::Schema.define(version: 20140918171010) do

  create_table "customers", force: true do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.string   "email",      null: false
    t.integer  "status",     null: false
    t.string   "username",   null: false
    t.string   "password",   null: false
    t.text     "settings",   null: false
    t.datetime "created_at", null: false
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

  create_table "ingredient_packages", force: true do |t|
    t.integer  "ingredient_id", null: false
    t.integer  "recipe_id",     null: false
    t.integer  "unit_id",       null: false
    t.integer  "amount",        null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at"
  end

  create_table "ingredients", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.text     "storage"
    t.datetime "created_at",  null: false
    t.datetime "updated_at"
  end

  add_index "ingredients", ["name"], name: "index_ingredients_on_name", unique: true

  create_table "join_recipe_ingredients_units_tables", force: true do |t|
    t.decimal  "amount",        null: false
    t.integer  "recipe_id",     null: false
    t.integer  "ingredient_id", null: false
    t.integer  "unit_id",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: true do |t|
    t.string   "picture",       null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at"
    t.integer  "customer_id",   null: false
    t.integer  "recipe_id"
    t.integer  "ingredient_id"
  end

  create_table "recipe_has_picture", id: false, force: true do |t|
    t.integer "recipe_id",  null: false
    t.integer "picture_id", null: false
  end

  create_table "recipes", force: true do |t|
    t.string   "name",        null: false
    t.integer  "time"
    t.text     "description"
    t.text     "howto",       null: false
    t.integer  "difficulty",  null: false
    t.text     "tools"
    t.datetime "created_at",  null: false
    t.datetime "updated_at"
    t.integer  "customer_id", null: false
  end

  create_table "units", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at"
  end

  add_index "units", ["name"], name: "index_units_on_name", unique: true

end
