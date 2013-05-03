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

ActiveRecord::Schema.define(:version => 20130503153541) do

  create_table "contents", :force => true do |t|
    t.integer  "question_id"
    t.integer  "paper_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "faculties", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "papers", :force => true do |t|
    t.integer  "subject_id"
    t.integer  "faculty_id"
    t.integer  "content_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "questions", :force => true do |t|
    t.integer  "subject_id"
    t.string   "title"
    t.string   "firstOption"
    t.string   "secondOption"
    t.string   "thirdOption"
    t.string   "fourthOption"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "answer"
  end

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tests", :force => true do |t|
    t.integer  "paper_id"
    t.integer  "user_id"
    t.decimal  "mark"
    t.boolean  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "remember_token"
    t.integer  "faculty_id"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
