class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :project_id
      t.integer :story_id
      t.integer :user_id
      t.string :url
      t.text :description

      t.timestamps
    end
    add_index :bookmarks, :project_id
    add_index :bookmarks, :story_id
    add_index :bookmarks, :user_id
  end
end
