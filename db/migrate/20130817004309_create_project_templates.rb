class CreateProjectTemplates < ActiveRecord::Migration
  def change
    create_table :project_templates do |t|
      t.string :name
      t.text :description
      t.text :manual
      t.string :git_url
      t.string :application
      t.timestamps
    end
    
  end
end
