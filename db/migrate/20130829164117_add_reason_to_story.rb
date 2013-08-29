class AddReasonToStory < ActiveRecord::Migration
  def change
    add_column :stories, :reason, :text
  end
end
