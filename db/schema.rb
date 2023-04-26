# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_25_082246) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "pokemon_cards", force: :cascade do |t|
    t.string "name"
    t.string "tcg_id"
    t.string "image"
    t.bigint "pokemon_set_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_set_id"], name: "index_pokemon_cards_on_pokemon_set_id"
  end

  create_table "pokemon_series", force: :cascade do |t|
    t.string "tcgId"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "logo"
  end

  create_table "pokemon_sets", force: :cascade do |t|
    t.string "name"
    t.string "tcg_id"
    t.string "logo"
    t.bigint "pokemon_serie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_serie_id"], name: "index_pokemon_sets_on_pokemon_serie_id"
  end

  add_foreign_key "comments", "articles"
  add_foreign_key "pokemon_cards", "pokemon_sets"
  add_foreign_key "pokemon_sets", "pokemon_series", column: "pokemon_serie_id"
end
