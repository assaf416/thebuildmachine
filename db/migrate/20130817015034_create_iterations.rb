class CreateIterations < ActiveRecord::Migration
  def change
    create_table :iterations do |t|
      t.integer :project_id
      t.string :name
      t.date :starts_on
      t.date :ends_on
      t.boolean :current
      t.integer :developers
      t.integer :testers

      t.timestamps
    end
    add_index :iterations, :project_id
  end
end
