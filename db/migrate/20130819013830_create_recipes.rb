class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string :name
      t.text :body, :description
      t.integer :rate
      t.string :category
      t.string :image_url 
      t.timestamps
    end
    add_index :recipes, :user_id
  end
end
