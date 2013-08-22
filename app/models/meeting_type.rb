class MeetingType < ActiveRecord::Base
  attr_accessible :cost, :defult_time, :meeting, :name, :phone_call, :project_id, :video_conf ,:kind, :location
  has_many :meetings
end
