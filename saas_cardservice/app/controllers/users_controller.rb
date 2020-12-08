class UsersController < ApplicationController

  def user_params
    params.require(:user).permit(:user_id, :email, :session_token)
  end

  def new

  end

  def create
    @user = User.find_by user_id: user_params[:user_id]
    if !@user.nil?
      flash[:notice] = "Sorry but that user id is taken"
      redirect_to new_user_path
    else
      user_params[:session_token] = SecureRandom.base64
      create_user!(user_params)
      flash[:notice] = "Welcome #{@user.user_id}. Your account has been created."
      redirect_to login_path
    end
  end

  def create_user!(user_params)
    user_params[:session_token] = SecureRandom.base64
    @user = User.create!(user_params)
  end
end