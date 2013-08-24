class Task < ActiveRecord::Base
  attr_accessible  :actual, :description, :estimation, :status, :story_id, :estimated_by_user_id
  belongs_to :story
  
  
  def compeleted?
    return false if self.status.nil?
    return true if self.status.include? "done" 
    return true if self.status.include? "finished" 
    return true if self.status.include? "completed" 
  end
  
end
