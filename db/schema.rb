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

ActiveRecord::Schema.define(version: 10) do

  create_table "contents", force: true do |t|
    t.integer "page_id"
    t.string  "lang"
    t.string  "title"
    t.text    "body"
  end

  add_index "contents", ["page_id"], name: "index_contents_on_page_id", using: :btree

  create_table "forms", force: true do |t|
    t.string   "vacancy"
    t.string   "username"
    t.string   "birth"
    t.string   "phone"
    t.string   "email"
    t.string   "education"
    t.string   "referencer"
    t.string   "file"
    t.string   "photo"
    t.text     "text1"
    t.text     "text2"
    t.text     "text3"
    t.text     "text4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "html_module_languages", force: true do |t|
    t.integer "html_module_id"
    t.string  "lang"
    t.string  "title"
    t.text    "body"
  end

  add_index "html_module_languages", ["html_module_id"], name: "index_html_module_languages_on_html_module_id", using: :btree

  create_table "html_modules", force: true do |t|
    t.string "name"
    t.string "position"
    t.string "lang"
    t.string "title"
    t.text   "body"
  end

  add_index "html_modules", ["lang"], name: "index_html_modules_on_lang", using: :btree
  add_index "html_modules", ["name"], name: "index_html_modules_on_name", using: :btree
  add_index "html_modules", ["position"], name: "index_html_modules_on_position", using: :btree

  create_table "html_modules_pages", id: false, force: true do |t|
    t.integer "html_module_id"
    t.integer "page_id"
  end

  add_index "html_modules_pages", ["html_module_id"], name: "index_html_modules_pages_on_html_module_id", using: :btree
  add_index "html_modules_pages", ["page_id"], name: "index_html_modules_pages_on_page_id", using: :btree

  create_table "jobs", force: true do |t|
    t.string   "tag_path"
    t.string   "tag_text"
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jobs", ["tag_path"], name: "index_jobs_on_tag_path", using: :btree
  add_index "jobs", ["tag_text"], name: "index_jobs_on_tag_text", using: :btree

  create_table "pages", force: true do |t|
    t.string   "path"
    t.string   "slug"
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["lft"], name: "index_pages_on_lft", using: :btree
  add_index "pages", ["parent_id"], name: "index_pages_on_parent_id", using: :btree
  add_index "pages", ["path"], name: "index_pages_on_path", using: :btree
  add_index "pages", ["rgt"], name: "index_pages_on_rgt", using: :btree
  add_index "pages", ["slug"], name: "index_pages_on_slug", using: :btree

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "photo"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staff_admins", force: true do |t|
    t.string   "email",                              null: false
    t.string   "encrypted_password",                 null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "staff_admins", ["email"], name: "index_staff_admins_on_email", unique: true, using: :btree
  add_index "staff_admins", ["reset_password_token"], name: "index_staff_admins_on_reset_password_token", unique: true, using: :btree

end
