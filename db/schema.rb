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

ActiveRecord::Schema.define(version: 20141118042720) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "street"
    t.string   "email"
    t.string   "phone_number"
    t.string   "mobile_number"
    t.string   "fax_number"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incidents", force: true do |t|
    t.string   "site_location"
    t.text     "summary",       limit: 255
    t.boolean  "is_active"
    t.date     "date"
    t.integer  "job_id"
    t.integer  "outcome_id"
    t.integer  "state_id"
    t.integer  "person_id"
    t.integer  "company_id"
    t.integer  "injury_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_1"
    t.string   "attachment_2"
    t.string   "attachment_3"
    t.string   "attachment_4"
    t.string   "attachment_5"
  end

  add_index "incidents", ["company_id"], name: "index_incidents_on_company_id"
  add_index "incidents", ["injury_id"], name: "index_incidents_on_injury_id"
  add_index "incidents", ["job_id"], name: "index_incidents_on_job_id"
  add_index "incidents", ["outcome_id"], name: "index_incidents_on_outcome_id"
  add_index "incidents", ["person_id"], name: "index_incidents_on_person_id"
  add_index "incidents", ["state_id"], name: "index_incidents_on_state_id"
  add_index "incidents", ["summary"], name: "index_incidents_on_summary"

  create_table "injuries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outcomes", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "fist_name"
    t.string   "street"
    t.string   "email"
    t.string   "phone_number"
    t.string   "mobile_number"
    t.string   "fax_number"
    t.string   "job_title"
    t.string   "company_id"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
