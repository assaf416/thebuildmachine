class Story < ActiveRecord::Base
  attr_accessible :created_by_user_id, :description, 
                  :functional_test, :iteration_id, :name, 
                  :primary_solver_user_id, :project_id, 
                  :secondary_solver_user_id, :status, :tested_by_user_id,
                  :dev_estimation, :dev_actual
                
  has_many :tasks
  belongs_to :project
  belongs_to :iteration
  has_many :comments, as: :commentable
  
  def estimation
    p = 0
    self.tasks.each{|t| p = p + t.estimation }
    p
  end
  
  def approve
    puts "TBD: add approve event to change log and update change log in git repository"
    puts "TBD: Send email when approved"
  end
  
  def deny
    puts "TBD: add deny event to change log and update change log in git repository"
    puts "TBD: Send email when denied"
  end
  
end
