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

ActiveRecord::Schema.define(:version => 20130610082641) do

  create_table "attachements", :force => true do |t|
    t.string   "fonction"
    t.string   "emplacement"
    t.string   "stock"
    t.string   "marque"
    t.string   "modele"
    t.string   "description"
    t.decimal  "prix"
    t.decimal  "bonus"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tracteur_neufs", :force => true do |t|
    t.string   "emplacement"
    t.string   "stock"
    t.string   "famille"
    t.string   "modele"
    t.string   "description"
    t.decimal  "prix"
    t.decimal  "bonus"
    t.date     "arrivee"
    t.integer  "facture"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
