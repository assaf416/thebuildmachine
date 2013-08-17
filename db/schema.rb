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

ActiveRecord::Schema.define(:version => 20130817004309) do

  create_table "comments", :force => true do |t|
    t.text     "content"
    t.integer  "rate"
    t.integer  "posted_by_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "comments", ["commentable_id", "commentable_type"], :name => "index_comments_on_commentable_id_and_commentable_type"
  add_index "comments", ["posted_by_id"], :name => "index_comments_on_posted_by_id"

  create_table "project_templates", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "manual"
    t.string   "git_url"
    t.string   "application"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "created_by_user_id"
    t.string   "name"
    t.text     "description"
    t.string   "icon"
    t.integer  "project_template_id"
    t.string   "production_server_url"
    t.string   "test_server_url"
    t.string   "stageing_server_url"
    t.string   "build_machine_url"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "tenants", :force => true do |t|
    t.string   "name"
    t.string   "subdomain"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subdomain"
    t.string   "picture_url"
    t.string   "plays_intruments"
    t.string   "liked_generes"
    t.string   "location"
    t.string   "sounds_like"
    t.string   "password_digest"
    t.boolean  "admin"
    t.integer  "tenant_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "users", ["tenant_id"], :name => "index_users_on_tenant_id"

end
