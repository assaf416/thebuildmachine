class Project < ActiveRecord::Base
  attr_accessible :created_by_user_id, :description, :icon, :name, :production_server_url, 
        :project_template_id, :stageing_server_url, :test_server_url, :build_machine_url,
        :git_url, :git_user, :git_pwd,:email_user, :email_pwd      
  has_many :stories
  has_many :todos
  has_many :activities
  has_many :comments, as: :commentable
  
  
  include ApplicationHelper
  def create_demo_project
    User.create!( 
      :name => lorem(2), :email => lorem(1)+ "@gmail.com", :developer => true,
      :password => "secret"
    )
  end
  
  def profile_image_url
    begin
     User.find(self.created_by_user_id).image_url
    rescue
      "/assets/recipes/rails.png"
    end
  end
  
end
