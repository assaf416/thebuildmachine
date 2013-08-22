class Meeting < ActiveRecord::Base
  attr_accessible :approved_user_names, :billable, :body, :cost, :denided_user_names, :ends_at, :invited_user_names, :kind, :location, :meeting_notes, :meeting_type_id, :private, :project_id, :related_stories, :related_users, :starts_at, :starts_on, :title, :user_id

  belongs_to :user
  belongs_to :project
  belongs_to :meeting_type
end
