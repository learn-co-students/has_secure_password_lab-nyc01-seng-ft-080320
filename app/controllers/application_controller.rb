class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :current_user

  def current_user
    @user = (User.find_by(id: session[:user_id])) || User.new
  end

  def user_logged_in?
    current_user.id != nil
  end

  def require_logged_in_user
    if !user_logged_in?
      redirect_to(controller: "sessions", action: "new")
    end
  end


end
