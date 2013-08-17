class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.integer :project_id
      t.integer :iteration_id
      t.text :description
      t.text :solution
      t.boolean :green
      t.integer :owner_user_id
      t.string :status

      t.timestamps
    end
    add_index :todos, :project_id
    add_index :todos, :iteration_id
    add_index :todos, :owner_user_id
    add_index :todos, :status
  end
end
