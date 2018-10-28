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

ActiveRecord::Schema.define(version: 2018_10_28_092108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "migrate_version", primary_key: "repository_id", id: :string, limit: 250, force: :cascade do |t|
    t.text "repository_path"
    t.integer "version"
  end

  create_table "properties", id: :serial, force: :cascade do |t|
    t.string "url", limit: 255
    t.datetime "created_at"
    t.datetime "added_at"
    t.datetime "updated_at"
    t.float "area"
    t.string "description", limit: 50000
    t.boolean "inactive"
    t.float "price"
    t.string "rooms", limit: 255
    t.string "sold_by", limit: 255
    t.string "title", limit: 255
    t.string "type", limit: 255
    t.integer "visits"
    t.float "lat"
    t.float "lon"
    t.string "source", limit: 255
    t.datetime "deactivated_at"
    t.integer "external_id"
    t.index ["url"], name: "properties_url_key", unique: true
  end

  create_table "rented_rooms", id: :serial, force: :cascade do |t|
    t.integer "properties_id"
    t.datetime "created_at"
    t.float "price"
    t.integer "age"
    t.float "lat"
    t.float "lon"
    t.string "status"
  end

end
