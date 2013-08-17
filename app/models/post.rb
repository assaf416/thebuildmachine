class Post < ActiveRecord::Base
  attr_accessible :name, :content
  belongs_to :topic
  has_many :comments, as: :commentable

  default_scope { where(tenant_id: Tenant.current_id) }
end
