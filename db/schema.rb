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

ActiveRecord::Schema.define(:version => 20130531023322) do

  create_table "characters", :force => true do |t|
    t.string   "hanzi"
    t.string   "zhuyin_fuhao"
    t.string   "pinyin"
    t.string   "english"
    t.string   "audio"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "guess_summaries", :force => true do |t|
    t.integer  "character_id"
    t.integer  "user_id"
    t.integer  "correct_guesses",   :default => 0
    t.integer  "incorrect_guesses", :default => 0
    t.integer  "weight",            :default => 0
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "guesses", :force => true do |t|
    t.integer  "character_id"
    t.string   "hanzi"
    t.boolean  "correct"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
