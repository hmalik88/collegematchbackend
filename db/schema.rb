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

ActiveRecord::Schema.define(version: 2019_05_17_040927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "college_tracks", force: :cascade do |t|
    t.integer "college_id"
    t.integer "user_id"
    t.string "major"
    t.index ["college_id"], name: "index_college_tracks_on_college_id"
    t.index ["user_id"], name: "index_college_tracks_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "task"
    t.integer "college_track_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "e_mail"
    t.string "password_digest"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "unit"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
  end

end
