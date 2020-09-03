class SessionsController < ApplicationController

    def new
    end

    
        # @user = User.find_by(name: params[:user][:name])

        # user = user.try(:authenticate, params[:user][:password])

        # if user
        #     session[:user_id] = user.user_id
        #     @user = user
        #     redirect_to welcome_index_path
        # else
        #     redirect_to new_user_path
    
        def create
            user = User.find_by(name: params[:user][:name])
        
            user = user.try(:authenticate, params[:user][:password])
        
            return redirect_to(controller: 'sessions', action: 'new') unless user
        
            session[:user_id] = user.id
        
            @user = user
        
            redirect_to welcome_index_path
          end

        def destroy
            session.delete :user_id
            redirect_to users_path
        end

    
end
