class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer :project_id
      t.integer :user_id
      t.string :kind
      t.string :title
      t.text :body
      t.string :location
      t.string :related_stories
      t.string :related_users
      t.datetime :starts_at
      t.date :starts_on
      t.datetime :ends_at
      t.text :meeting_notes
      t.string :invited_user_names
      t.string :approved_user_names
      t.string :denided_user_names
      t.integer :cost
      t.boolean :billable
      t.boolean :private
      t.integer :meeting_type_id

      t.timestamps
    end
    add_index :meetings, :project_id
    add_index :meetings, :user_id
    add_index :meetings, :meeting_type_id
  end
end
