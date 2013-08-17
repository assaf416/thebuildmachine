class Iteration < ActiveRecord::Base
  attr_accessible :current, :developers, :ends_on, :name, :project_id, :starts_on, :testers
  belongs_to :project
  has_many :stories
  has_many :todos
end
