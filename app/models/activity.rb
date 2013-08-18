class Activity < ActiveRecord::Base
  attr_accessible :body, :created_by_user_id, :ended_at, :kind, :project_id, :started_at, :title
end
