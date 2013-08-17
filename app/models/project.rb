class Project < ActiveRecord::Base
  attr_accessible :created_by_user_id, :description, :icon, :name, :production_server_url, 
        :project_template_id, :stageing_server_url, :test_server_url, :build_machine_url
      
  has_many :stories
  has_many :todos
  
end
