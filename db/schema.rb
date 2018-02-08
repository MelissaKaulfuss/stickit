ActiveRecord::Schema.define(version: 20180126111706) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end
end
