class User < ActiveRecord::Base
  attr_accessible :name, :email, :subdomain, :picture_url, :plays_intruments, :liked_generes, :location, :sounds_like ,:admin, :password, :password_confirmation
  has_secure_password
#  validates_uniqueness_of :email, scope: :tenant_id

  has_many :topics
  has_many :presets
  has_many :songs
  has_many :comments

#  default_scope { where(tenant_id: Tenant.current_id) }
end
