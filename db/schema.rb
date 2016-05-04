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

ActiveRecord::Schema.define(version: 20160504121825) do

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "description",    limit: 255
    t.string   "location",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "current_skills"
    t.text     "interested_in"
    t.integer  "location_id"
  end

  add_index "profiles", ["location_id"], name: "index_profiles_on_location_id"

  create_table "profiles_skills", id: false, force: :cascade do |t|
    t.integer "profile_id"
    t.integer "skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
