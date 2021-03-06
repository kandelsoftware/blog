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

ActiveRecord::Schema.define(:version => 20150908042110) do

  create_table "assignments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comida_translations", :force => true do |t|
    t.integer  "comida_id"
    t.string   "locale",      :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "name"
    t.text     "description"
  end

  add_index "comida_translations", ["comida_id"], :name => "index_comida_translations_on_comida_id"
  add_index "comida_translations", ["locale"], :name => "index_comida_translations_on_locale"

  create_table "comidas", :force => true do |t|
    t.integer  "menu_id"
    t.string   "name"
    t.string   "price"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "url"
    t.string   "slug"
    t.string   "image"
  end

  add_index "comidas", ["menu_id"], :name => "index_comidas_on_menu_id"
  add_index "comidas", ["slug"], :name => "index_comidas_on_slug"

  create_table "descuentos", :force => true do |t|
    t.string   "persona"
    t.string   "hora"
    t.string   "menu"
    t.string   "fecha"
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "email"
    t.string   "telefono"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exitpops", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "himalayas", :force => true do |t|
    t.string   "persona"
    t.string   "hora"
    t.string   "menu"
    t.date     "fecha"
    t.string   "nombre"
    t.string   "email"
    t.string   "telefono"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "apellidos"
    t.string   "slug"
  end

  add_index "himalayas", ["slug"], :name => "index_himalayas_on_slug"

  create_table "menu_translations", :force => true do |t|
    t.integer  "menu_id"
    t.string   "locale",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  add_index "menu_translations", ["locale"], :name => "index_menu_translations_on_locale"
  add_index "menu_translations", ["menu_id"], :name => "index_menu_translations_on_menu_id"

  create_table "menus", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image"
    t.string   "url"
    t.string   "slug"
  end

  add_index "menus", ["slug"], :name => "index_menus_on_slug"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
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
