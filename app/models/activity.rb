class Activity < ActiveRecord::Base
  attr_accessible :body, :created_by_user_id, :ended_at, 
    :kind, :project_id, :started_at, :title,:story_id, 
    :create_by_user_id

  belongs_to :project
  belongs_to :story
#  belongs_to :user
end
