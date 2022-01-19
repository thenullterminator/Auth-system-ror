class SignupController < ApplicationController
  def index

    @user = User.new
  end

  def create

    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice:"Created Account"
    else 
      # flash[:alert] = "some error occured, try again"
      render :index
    end
  end

  private

  def user_params

    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
