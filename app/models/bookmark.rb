class Bookmark < ActiveRecord::Base
  attr_accessible :description, :project_id, :story_id, :url, :user_id
  belongs_to :project
  belongs_to :story
  belongs_to :user
end
