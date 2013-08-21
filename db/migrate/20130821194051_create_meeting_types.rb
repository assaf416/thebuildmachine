class CreateMeetingTypes < ActiveRecord::Migration
  def change
    create_table :meeting_types do |t|
      t.integer :project_id
      t.string :name
      t.integer :cost
      t.string :defult_time
      t.boolean :phone_call
      t.boolean :video_conf
      t.boolean :meeting

      t.timestamps
    end
    add_index :meeting_types, :project_id
  end
end
