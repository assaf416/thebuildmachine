class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :story_id
      t.integer :estimated_by_user_id
      t.integer :estimation
      t.integer :actual
      t.text :description
      t.string :status

      t.timestamps
    end
    add_index :tasks, :story_id
  end
end
