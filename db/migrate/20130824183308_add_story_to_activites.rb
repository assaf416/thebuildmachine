class AddStoryToActivites < ActiveRecord::Migration
  def change
    add_column :activities, :story_id, :integer
    add_column :users,:email_on_new_message, :boolean
  end
end
