class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :created_by_user_id
      t.string :name
      t.text :description
      t.integer :project_template_id
      t.string :production_server_url
      t.string :test_server_url
      t.string :stageing_server_url
      t.string :build_machine_url
      t.string :git_url, :git_user, :git_pwd
      t.string :email_user, :email_pwd
      t.integer :development_unit_cost, :testing_unit_cost, :spec_unit_cost
      t.timestamps
    end
  end
end
