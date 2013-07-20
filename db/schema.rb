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

ActiveRecord::Schema.define(version: 20130720181748) do

  create_table "patients", force: true do |t|
    t.string   "sexe"
    t.integer  "age"
    t.string   "diabete"
    t.integer  "diabete_duree"
    t.decimal  "imc",                precision: 4, scale: 1
    t.decimal  "poids",              precision: 4, scale: 1
    t.string   "tabac"
    t.string   "hta"
    t.string   "dysplipidemie"
    t.string   "aomi"
    t.string   "ips"
    t.string   "coronarien"
    t.string   "cerebro_vasculaire"
    t.string   "cv_fam"
    t.string   "retinopathie"
    t.string   "neuropathie"
    t.integer  "creat"
    t.string   "clearance"
    t.string   "microalb"
    t.string   "proteinurie"
    t.string   "ttt_aa"
    t.integer  "ttt_diabete"
    t.decimal  "hba1c",              precision: 3, scale: 1
    t.boolean  "depistage"
    t.boolean  "suivi"
    t.string   "autres"
    t.boolean  "tsaami"
    t.boolean  "tsaant"
    t.boolean  "intro_statine"
    t.boolean  "intro_aa"
    t.boolean  "intro_iec"
    t.boolean  "ttt_chir"
    t.boolean  "angiotdm"
    t.boolean  "surv_doppler"
    t.string   "surv_doppler_freq"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ttt_aa_quoi"
  end

  create_table "resultats", force: true do |t|
    t.string   "libelle"
    t.string   "siege"
    t.string   "cote"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  add_index "resultats", ["patient_id"], name: "index_resultats_on_patient_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
