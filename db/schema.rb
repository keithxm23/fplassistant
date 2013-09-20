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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130920202240) do

  create_table "players", :force => true do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "elementid"
    t.integer  "transfers_out"
    t.integer  "code"
    t.integer  "event_total"
    t.integer  "last_season_points"
    t.integer  "squad_number"
    t.integer  "transfers_balance"
    t.date     "news_updated"
    t.date     "news_added"
    t.integer  "event_cost"
    t.string   "web_name"
    t.boolean  "in_dreamteam"
    t.integer  "team_code"
    t.text     "shirt_image_url"
    t.integer  "transfers_out_event"
    t.integer  "element_type_id"
    t.integer  "max_cost"
    t.integer  "selected"
    t.integer  "min_cost"
    t.integer  "total_points"
    t.string   "type_name"
    t.string   "team_name"
    t.string   "status"
    t.date     "added"
    t.float    "form"
    t.text     "shirt_mobile_image_url"
    t.string   "current_fixture"
    t.integer  "now_cost"
    t.float    "points_per_game"
    t.integer  "transfers_in"
    t.text     "news"
    t.integer  "original_cost"
    t.integer  "event_points"
    t.date     "news_return"
    t.string   "next_fixture"
    t.integer  "transfers_in_event"
    t.float    "selected_by"
    t.integer  "team_id"
    t.text     "photo_mobile_url"
  end

end
