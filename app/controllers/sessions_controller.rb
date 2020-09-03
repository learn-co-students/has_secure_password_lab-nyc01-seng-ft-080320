class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(name: params[:user][:name])
    authenticated = user.try(:authenticate, params[:user][:password])
    if authenticated
        session[:user_id] = user.id
        @user = user
        redirect_to '/'
    else 
        redirect_to new_login_path
    end
  end

  def destroy
    session.destroy :user_id
    redirect_to '/'
  end
end
