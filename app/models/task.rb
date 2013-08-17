class Task < ActiveRecord::Base
  attr_accessible  :actual, :description, :estimation, :status, :story_id
  belongs_to :story
end
