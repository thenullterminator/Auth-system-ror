class ApplicationController < ActionController::Base

    before_action :set_current_user

    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id:  session[:user_id])
        end
    end

    def logged_in
        if Current.user.nil? 
            redirect_to login_path, alert: 'You must be logged in !'
        end
    end
end
