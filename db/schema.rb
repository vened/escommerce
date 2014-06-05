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

ActiveRecord::Schema.define(version: 4) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "pages", force: true do |t|
    t.string   "title"
    t.string   "path"
    t.text     "body"
    t.string   "meta_key"
    t.string   "meta_desc"
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

  create_table "staff_admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
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
