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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121010150500) do

  create_table "addresses", :force => true do |t|
    t.string   "shortname"
    t.string   "longname"
    t.string   "postcode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fax_cases", :force => true do |t|
    t.integer  "case_no"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trans", :force => true do |t|
    t.integer  "user_id"
    t.integer  "faxcase_id"
    t.integer  "tran_no"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "trans", ["faxcase_id"], :name => "index_trans_on_faxcase_id"
  add_index "trans", ["user_id"], :name => "index_trans_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "userid"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
