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

ActiveRecord::Schema.define(version: 2023_05_09_114838) do

  create_table "chatrooms", force: :cascade do |t|
    t.integer "user_1_id", null: false
    t.integer "user_2_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_1_id"], name: "index_chatrooms_on_user_1_id"
    t.index ["user_2_id"], name: "index_chatrooms_on_user_2_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.integer "user_id", null: false
    t.integer "chatroom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "gender"
    t.string "city"
    t.text "bio"
    t.string "linkedin_link"
    t.string "github_link"
    t.string "programming_languages"
    t.string "topic_interest"
    t.string "communities"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chatrooms", "users", column: "user_1_id"
  add_foreign_key "chatrooms", "users", column: "user_2_id"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
end
