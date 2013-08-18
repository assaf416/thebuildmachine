class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :project_id
      t.string :name
      t.text :description
      t.text :functional_test
      t.string :status
      t.integer :dev_estimation, :dev_actual, :test_estimation, :test_actual
      t.integer :created_by_user_id
      t.integer :primary_solver_user_id
      t.integer :secondary_solver_user_id
      t.integer :tested_by_user_id
      t.integer :iteration_id

      t.timestamps
    end
    add_index :stories, :project_id
    add_index :stories, :created_by_user_id
    add_index :stories, :primary_solver_user_id
    add_index :stories, :tested_by_user_id
    add_index :stories, :iteration_id
  end
end
