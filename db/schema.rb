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

ActiveRecord::Schema.define(:version => 20130824183308) do

  create_table "activities", :force => true do |t|
    t.integer  "project_id"
    t.string   "kind"
    t.integer  "created_by_user_id"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "story_id"
  end

  add_index "activities", ["created_by_user_id"], :name => "index_activities_on_created_by_user_id"
  add_index "activities", ["kind"], :name => "index_activities_on_kind"
  add_index "activities", ["project_id"], :name => "index_activities_on_project_id"

  create_table "comments", :force => true do |t|
    t.text     "content"
    t.text     "answer"
    t.string   "kind"
    t.string   "picture_url"
    t.string   "movie_url"
    t.string   "page_url"
    t.integer  "rate"
    t.integer  "posted_by_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "comments", ["commentable_id", "commentable_type"], :name => "index_comments_on_commentable_id_and_commentable_type"
  add_index "comments", ["posted_by_id"], :name => "index_comments_on_posted_by_id"

  create_table "iterations", :force => true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.date     "starts_on"
    t.date     "ends_on"
    t.boolean  "current"
    t.integer  "developers"
    t.integer  "testers"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "iterations", ["project_id"], :name => "index_iterations_on_project_id"

  create_table "meeting_types", :force => true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.integer  "cost"
    t.string   "defult_time"
    t.boolean  "phone_call"
    t.boolean  "video_conf"
    t.boolean  "meeting"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "meeting_types", ["project_id"], :name => "index_meeting_types_on_project_id"

  create_table "meetings", :force => true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.string   "kind"
    t.string   "title"
    t.text     "body"
    t.string   "location"
    t.string   "related_stories"
    t.string   "related_users"
    t.datetime "starts_at"
    t.date     "starts_on"
    t.datetime "ends_at"
    t.text     "meeting_notes"
    t.string   "invited_user_names"
    t.string   "approved_user_names"
    t.string   "denided_user_names"
    t.integer  "cost"
    t.boolean  "billable"
    t.boolean  "private"
    t.integer  "meeting_type_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "meetings", ["meeting_type_id"], :name => "index_meetings_on_meeting_type_id"
  add_index "meetings", ["project_id"], :name => "index_meetings_on_project_id"
  add_index "meetings", ["user_id"], :name => "index_meetings_on_user_id"

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
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.integer  "project_template_id"
    t.string   "production_server_url"
    t.string   "test_server_url"
    t.string   "stageing_server_url"
    t.string   "build_machine_url"
    t.string   "git_url"
    t.string   "git_user"
    t.string   "git_pwd"
    t.string   "email_user"
    t.string   "email_pwd"
    t.integer  "development_unit_cost"
    t.integer  "testing_unit_cost"
    t.integer  "spec_unit_cost"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "recipes", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "body"
    t.text     "description"
    t.integer  "rate"
    t.string   "category"
    t.string   "image_url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "recipes", ["user_id"], :name => "index_recipes_on_user_id"

  create_table "stories", :force => true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.text     "description"
    t.text     "functional_test"
    t.string   "status"
    t.integer  "dev_estimation"
    t.integer  "dev_actual"
    t.integer  "test_estimation"
    t.integer  "test_actual"
    t.integer  "created_by_user_id"
    t.integer  "primary_solver_user_id"
    t.integer  "secondary_solver_user_id"
    t.integer  "tested_by_user_id"
    t.integer  "iteration_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "stories", ["created_by_user_id"], :name => "index_stories_on_created_by_user_id"
  add_index "stories", ["iteration_id"], :name => "index_stories_on_iteration_id"
  add_index "stories", ["primary_solver_user_id"], :name => "index_stories_on_primary_solver_user_id"
  add_index "stories", ["project_id"], :name => "index_stories_on_project_id"
  add_index "stories", ["tested_by_user_id"], :name => "index_stories_on_tested_by_user_id"

  create_table "tasks", :force => true do |t|
    t.integer  "story_id"
    t.integer  "estimated_by_user_id"
    t.integer  "estimation"
    t.integer  "actual"
    t.text     "description"
    t.string   "status"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "tasks", ["story_id"], :name => "index_tasks_on_story_id"

  create_table "tenants", :force => true do |t|
    t.string   "name"
    t.string   "subdomain"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "todos", :force => true do |t|
    t.integer  "project_id"
    t.integer  "iteration_id"
    t.text     "description"
    t.text     "solution"
    t.boolean  "green"
    t.integer  "owner_user_id"
    t.string   "status"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "todos", ["iteration_id"], :name => "index_todos_on_iteration_id"
  add_index "todos", ["owner_user_id"], :name => "index_todos_on_owner_user_id"
  add_index "todos", ["project_id"], :name => "index_todos_on_project_id"
  add_index "todos", ["status"], :name => "index_todos_on_status"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subdomain"
    t.string   "picture_url"
    t.string   "git_server"
    t.string   "git_user"
    t.string   "git_pwd"
    t.string   "location"
    t.string   "password_digest"
    t.boolean  "admin"
    t.boolean  "tester"
    t.boolean  "developer"
    t.boolean  "customer"
    t.integer  "tenant_id"
    t.integer  "cost_per_point"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.boolean  "email_on_new_message"
  end

  add_index "users", ["tenant_id"], :name => "index_users_on_tenant_id"

end
