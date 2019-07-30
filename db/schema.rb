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

ActiveRecord::Schema.define(version: 2019_07_26_013627) do

  create_table "celebrities", force: :cascade do |t|
    t.string "name"
    t.datetime "date_of_birth"
    t.integer "gender"
    t.string "nationality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "portrait"
  end

  create_table "celebrity_media", force: :cascade do |t|
    t.integer "role"
    t.integer "celebrity_id"
    t.integer "medium_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["celebrity_id"], name: "index_celebrity_media_on_celebrity_id"
    t.index ["medium_id"], name: "index_celebrity_media_on_medium_id"
  end

  create_table "episodes", force: :cascade do |t|
    t.datetime "release_date"
    t.float "critic_score"
    t.float "audience_score"
    t.text "info"
    t.integer "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "episode_number"
    t.index ["season_id"], name: "index_episodes_on_season_id"
  end

  create_table "media", force: :cascade do |t|
    t.string "reviewable_type"
    t.integer "reviewable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.datetime "release_date"
    t.float "critic_score"
    t.float "audience_score"
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "poster"
  end

  create_table "news", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_news_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "score"
    t.integer "user_id"
    t.integer "medium_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medium_id"], name: "index_reviews_on_medium_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.text "info"
    t.integer "tv_show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "poster"
    t.integer "season_number"
    t.index ["tv_show_id"], name: "index_seasons_on_tv_show_id"
  end

  create_table "tv_shows", force: :cascade do |t|
    t.string "name"
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "poster"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "organization"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
