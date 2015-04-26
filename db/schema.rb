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

ActiveRecord::Schema.define(version: 20150426203552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "resumes", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id"
    t.string   "education_1"
    t.string   "education_1_school"
    t.string   "education_1_degree"
    t.string   "education_1_major"
    t.string   "education_1_minor"
    t.string   "education_1_duration"
    t.string   "education_2"
    t.string   "education_2_degree"
    t.string   "education_2_major"
    t.string   "education_2_minor"
    t.string   "education_2_duration"
    t.string   "education_3"
    t.string   "education_3_degree"
    t.string   "education_3_major"
    t.string   "education_3_minor"
    t.string   "education_3_duration"
    t.string   "experience_1"
    t.string   "experience_1_position"
    t.string   "experience_1_duration"
    t.text     "experience_1_description"
    t.string   "experience_2"
    t.string   "experience_2_position"
    t.string   "experience_2_duration"
    t.text     "experience_2_description"
    t.string   "experience_3"
    t.string   "experience_3_position"
    t.string   "experience_3_duration"
    t.text     "experience_3_description"
    t.string   "experience_4"
    t.string   "experience_4_position"
    t.string   "experience_4_duration"
    t.text     "experience_4_description"
    t.text     "skills_description"
  end

  add_index "resumes", ["user_id"], name: "index_resumes_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "resumes", "users"
end
