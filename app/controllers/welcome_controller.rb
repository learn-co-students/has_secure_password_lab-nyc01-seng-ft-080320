class WelcomeController < ApplicationController
    before_action :require_logged_in_user

    def homepage
    end

end
