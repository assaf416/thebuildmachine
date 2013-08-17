class ProjectTemplate < ActiveRecord::Base
  attr_accessible :application, :description, :git_url, :manual, :name
end
