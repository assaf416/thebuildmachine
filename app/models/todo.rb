class Todo < ActiveRecord::Base
  attr_accessible :description, :green, :iteration_id, :owner_user_id, :project_id, :solution, :status
  belongs_to :iteration
  belongs_to :project
end
