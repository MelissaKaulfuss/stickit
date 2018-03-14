ActiveRecord::Schema.define(version: 20180313104354) do

  enable_extension "plpgsql"
  create_table "sticker_collections", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "user_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"],
    name: "index_sticker_collections_on_user_id"
  end

  create_table "stickers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "url"
    t.bigint "sticker_collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sticker_collection_id"],
    name: "index_stickers_on_sticker_collection_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  add_foreign_key "sticker_collections", "users"
  add_foreign_key "stickers", "sticker_collections"
end
