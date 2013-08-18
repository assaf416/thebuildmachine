class User < ActiveRecord::Base
attr_accessible :name, :email, :subdomain, :picture_url, 
                :developer, :tester, :customer,
                :cost_per_point,
                :admin,:password, :password_confirmation
  has_secure_password
#  validates_uniqueness_of :email, scope: :tenant_id

  
  def stories
    ret = Story.where(:created_by_user_id => self.id)
    ret << Story.where(:primary_solver_user_id => self.id)
    ret << Story.where(:secondary_solver_user_id => self.id)
    ret << Story.where(:tested_by_user_id => self.id)
    ret
  end
#  default_scope { where(tenant_id: Tenant.current_id) }
end
