class User < ActiveRecord::Base
attr_accessible :name, :email, :subdomain, :picture_url, 
                :developer, :tester, :customer,
                :cost_per_point,
                :admin,:password, :password_confirmation,
                :email_on_new_message
  has_secure_password
#  validates_uniqueness_of :email, scope: :tenant_id
  has_many :meetings
  has_many :projects
  has_many :stories
  has_many :bookmarks
  
  
  
  def communication_links
    "User is online"
  end
  
  
  include ApplicationHelper
  def current?
    if current_user.present?
       return self.id == current_user.id
    else
      return false
    end
  end
  
  def stories
    ret = Story.where(:created_by_user_id => self.id)
    ret << Story.where(:primary_solver_user_id => self.id)
    ret << Story.where(:secondary_solver_user_id => self.id)
    ret << Story.where(:tested_by_user_id => self.id)
    ret
  end
#  default_scope { where(tenant_id: Tenant.current_id) }
end
