class SessionsController < ApplicationController

  def index
    if session[:user_id]
      redirect_to admins_path
    else
      @title = "Admin"
      @body_class = "admin"
    end
  end

  def create
    if admin = Admin.find_by_email(params[:email]).try(:authenticate, params[:password])
      session[:user_id] = admin.id
      redirect_to admins_path
    else
      flash[:errors] = "Please try again"
      redirect_to narwhal_path
    end
  end

  def destroy
    @_current_user = session[:user_id] = nil
    redirect_to root_path
  end

end