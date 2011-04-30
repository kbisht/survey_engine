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

ActiveRecord::Schema.define(:version => 20110430093050) do

  create_table "questions", :force => true do |t|
    t.string   "description"
    t.integer  "user_survey_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "op1"
    t.string   "op2"
    t.string   "op3"
    t.string   "op4"
    t.string   "op5"
    t.integer  "ans"
  end

  create_table "results", :force => true do |t|
    t.integer  "user_survey_id"
    t.integer  "question_id"
    t.integer  "count1"
    t.integer  "count2"
    t.integer  "count3"
    t.integer  "count4"
    t.integer  "count5"
    t.integer  "scount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_surveys", :force => true do |t|
    t.integer  "surveyID"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  add_index "user_surveys", ["user_id"], :name => "index_user_surveys_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
