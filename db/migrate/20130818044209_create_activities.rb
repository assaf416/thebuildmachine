class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :project_id
      t.string :kind
      t.integer :created_by_user_id
      t.datetime :started_at
      t.datetime :ended_at
      t.string :title
      t.text :body

      t.timestamps
    end
    add_index :activities, :project_id
    add_index :activities, :kind
    add_index :activities, :created_by_user_id
  end
end
