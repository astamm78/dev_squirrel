module ApplicationHelper

  def current_user
    @_current_user ||= session[:user_id] && Admin.find_by_id(session[:user_id])
  end

end
