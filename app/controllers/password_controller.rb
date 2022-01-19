class PasswordController < ApplicationController

    before_action :logged_in

    def index 
    end

    def update 
        if Current.user.update(password_params)
            redirect_to root_path, notice: 'Password updated successfully'
        else 
            render :index
        end
    end

    private

    def password_params
        params.require(:user).permit(:password, :password_confirmation)
    end
end