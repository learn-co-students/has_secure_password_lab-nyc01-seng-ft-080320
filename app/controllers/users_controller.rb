class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new
    # byebug
    if params[:user][:password] == params[:user][:password_confirmation]
      # byebug
      @user = User.create(params.require(:user).permit(:name, :password, :password_confirmation))
      session[:user_id] = @user.id
    else
      redirect_to users_new_path
    end
    
  end
end
