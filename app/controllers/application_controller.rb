class ApplicationController < ActionController::Base
  protect_from_forgery
  
#  around_filter :scope_current_tenant

private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
  def current_tenant
    User.find_by_subdomain! request.subdomain
  end
  helper_method :current_tenant
  
  def scope_current_tenant
    Tenant.current_id = current_user.id
    current_user.id
    yield
  ensure
    Tenant.current_id = nil
  end
end
