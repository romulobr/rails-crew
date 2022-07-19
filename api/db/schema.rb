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

ActiveRecord::Schema.define(version: 2022_07_18_151359) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_sessions", force: :cascade do |t|
    t.integer "desired_number_of_players"
    t.integer "active_number_of_players"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_states", force: :cascade do |t|
    t.integer "tick_count"
    t.boolean "game_is_started"
    t.integer "player_turn"
    t.bigint "game_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_session_id"], name: "index_game_states_on_game_session_id"
  end

  create_table "player_states", force: :cascade do |t|
    t.boolean "is_active"
    t.bigint "player_id"
    t.bigint "game_state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_state_id"], name: "index_player_states_on_game_state_id"
    t.index ["player_id"], name: "index_player_states_on_player_id"
  end

  create_table "player_states_playing_cards", id: false, force: :cascade do |t|
    t.bigint "player_state_id", null: false
    t.bigint "playing_card_id", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playing_cards", force: :cascade do |t|
    t.integer "number"
    t.integer "color", default: 0
    t.boolean "is_rocket", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "player_states", "game_states"
  add_foreign_key "player_states", "players"
end
