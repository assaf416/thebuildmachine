class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :created_by_user_id
      t.string :name
      t.text :description
      t.string :icon
      t.integer :project_template_id
      t.string :production_server_url
      t.string :test_server_url
      t.string :stageing_server_url
      t.string :build_machine_url
      t.timestamps
    end
  end
end
