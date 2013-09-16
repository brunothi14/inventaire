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

ActiveRecord::Schema.define(:version => 20130916142408) do

  create_table "attachements", :force => true do |t|
    t.string   "fonction"
    t.string   "emplacement"
    t.string   "stock"
    t.string   "marque"
    t.string   "modele"
    t.string   "description"
    t.decimal  "prix",       :default => 0
    t.decimal  "bonus",       :default => 0
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "serial"
  end

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "equipements", :force => true do |t|
    t.string   "emplacement"
    t.string   "stock"
    t.string   "description"
    t.string   "modele"
    t.decimal  "prix",       :default => 0
    t.decimal  "bonus",       :default => 0
    t.date     "arrivee"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "families", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rental_fleet2s", :force => true do |t|
    t.string   "model"
    t.string   "serial"
    t.string   "client"
    t.string   "location"
    t.date     "dateout"
    t.string   "salesman"
    t.integer  "hours",       :default => 0
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "bonus",       :default => 0
    t.text     "description"
  end

  create_table "rental_fleets", :force => true do |t|
    t.string   "model"
    t.string   "serial"
    t.string   "client"
    t.string   "location"
    t.date     "dateout"
    t.string   "salesman"
    t.integer  "hours",       :default => 0
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "bonus",       :default => 0
    t.text     "description"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "snowblowers", :force => true do |t|
    t.string   "brand"
    t.string   "model"
    t.string   "color"
    t.string   "stock"
    t.string   "serial"
    t.text     "description"
    t.decimal  "price",       :precision => 8, :scale => 2, :default => 0
    t.decimal  "bonus",       :precision => 8, :scale => 2, :default => 0
    t.integer  "location_id"
    t.integer  "status_id"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.date     "fielddate"
  end

  create_table "statuses", :force => true do |t|
    t.string   "stat"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tires", :force => true do |t|
    t.string   "model"
    t.string   "dimension"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tractors", :force => true do |t|
    t.string   "model"
    t.string   "serial"
    t.integer  "hours",       :default => 0
    t.integer  "invoice"
    t.date     "fielddate"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "status_id"
    t.integer  "location_id"
    t.decimal  "bonus",       :default => 0
    t.string   "stock"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
