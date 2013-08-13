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

ActiveRecord::Schema.define(:version => 20130812164141) do

  create_table "games", :force => true do |t|
    t.string   "name"
    t.string   "developer"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "instructions", :force => true do |t|
    t.string   "games_id"
    t.string   "details"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "patient_id"
  end

  create_table "statistics", :force => true do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.decimal  "time",       :precision => 10, :scale => 2
    t.integer  "repeats"
    t.decimal  "ratio",      :precision => 4,  :scale => 2
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "hospital_name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "username"
    t.date     "date_of_birth"
    t.string   "type"
    t.string   "remember_token"
    t.integer  "therapist_id"
    t.boolean  "admin"
    t.string   "address"
    t.integer  "phone_number"
    t.string   "injury"
    t.datetime "last_login"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
