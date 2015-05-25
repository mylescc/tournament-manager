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

ActiveRecord::Schema.define(version: 20150525212940) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "matches", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "winner_id"
    t.integer  "loser_id"
    t.integer  "tournament_id"
    t.integer  "score_id"
    t.string   "score_type"
    t.string   "type"
  end

  create_table "tennis_games", force: true do |t|
    t.integer  "set_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tennis_games", ["player_id"], :name => "index_tennis_games_on_player_id"
  add_index "tennis_games", ["set_id"], :name => "index_tennis_games_on_set_id"

  create_table "tennis_scores", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tennis_sets", force: true do |t|
    t.integer  "score_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tennis_sets", ["score_id"], :name => "index_tennis_sets_on_score_id"

  create_table "tournaments", force: true do |t|
    t.string   "name"
    t.datetime "start"
    t.datetime "finish"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.text     "bio"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password", limit: 128
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
