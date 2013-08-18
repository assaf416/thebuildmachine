class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content, :answer
      t.string :kind, :picture_url, :movie_url, :page_url
      t.integer :rate
      t.integer :posted_by_id
      t.integer :commentable_id
      t.string :commentable_type
      t.timestamps
    end
    add_index :comments, [:commentable_id, :commentable_type]
    add_index :comments, [:posted_by_id]
  end
end
