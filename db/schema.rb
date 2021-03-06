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

ActiveRecord::Schema.define(version: 20151123103146) do

  create_table "members", force: :cascade do |t|
    t.string   "user_email", limit: 255
    t.integer  "project_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "projectmembers", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.integer  "project_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "requirements", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.string   "contact",     limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "reuirements", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.string   "contact",     limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "sprints", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "duration",   limit: 4
    t.string   "start_date", limit: 255
    t.string   "end_date",   limit: 255
    t.integer  "project_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sprints_tasks", id: false, force: :cascade do |t|
    t.integer "sprint_id", limit: 4
    t.integer "page_id",   limit: 4
  end

  add_index "sprints_tasks", ["sprint_id", "page_id"], name: "index_sprints_tasks_on_sprint_id_and_page_id", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "status",           limit: 255
    t.integer  "user_story_id",    limit: 4
    t.integer  "sprint_id",        limit: 4
    t.integer  "projectmember_id", limit: 4
    t.integer  "man_hours",        limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "user_stories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.integer  "project_id",  limit: 4
    t.integer  "projects_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "user_stories", ["project_id"], name: "fk_rails_daec34e281", using: :btree
  add_index "user_stories", ["projects_id"], name: "index_user_stories_on_projects_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "name",                   limit: 255
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "velocity",               limit: 4
    t.integer  "worksOnId",              limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "user_stories", "projects"
end
