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

ActiveRecord::Schema.define(:version => 20120314232940) do

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["person_id"], :name => "index_comments_on_person_id"

  create_table "genders", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "surname"
    t.string   "other_names"
    t.date     "dob"
    t.date     "date_of_employment"
    t.date     "date_of_resignation"
    t.integer  "salary_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "email"
    t.string   "telephone"
    t.integer  "title_id"
    t.integer  "gender_id"
    t.string   "image"
  end

  create_table "salaries", :force => true do |t|
    t.string   "department"
    t.integer  "salary"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "titles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
