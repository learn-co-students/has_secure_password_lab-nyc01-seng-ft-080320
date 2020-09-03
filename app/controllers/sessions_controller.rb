class SessionsController < ApplicationController

    def new
    end

    #grafted from other people's repos because I am confused.
    def create
        user = User.find_by(name: params[:user][:name])
        user = user.try(:authenticate, params[:user][:password])
        return redirect_to(controller: 'sessions', action: 'new') unless user
    
        session[:user_id] = user.id
        @user = user
        redirect_to controller: 'welcome', action: 'homepage'
    end

    def destroy
        session.delete :user_id
        redirect_to root_path
    end



end
