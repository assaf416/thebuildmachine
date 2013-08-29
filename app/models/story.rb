class Story < ActiveRecord::Base
  attr_accessible :created_by_user_id, :description, 
    :functional_test, :iteration_id, :name, 
    :primary_solver_user_id, :project_id, 
    :secondary_solver_user_id, :status, :tested_by_user_id,
    :dev_estimation, :dev_actual,:test_estimation
                
  has_many :tasks
  has_many :activities
  has_many :bookmarks
  belongs_to :project
  belongs_to :user
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
  
  
  def complition
    est = 0; done =0
    self.tasks.each{|t| 
      est = est + t.estimation.to_i 
      done = done + t.estimation.to_i if t.compeleted?
    }
    begin
      return done / est * 100
    rescue
      return 0
    end
  end
  
  def add_activity(kind ,user, message )
    Activity.create!(
      :project_id        => self.project_id, 
      :story_id          => self.id,
      :kind              => kind,
      :created_by_user_id => user.id,
      :body              => message
    )
  end
  
end
