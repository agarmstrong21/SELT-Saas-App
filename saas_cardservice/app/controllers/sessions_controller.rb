
class SessionsController < ApplicationController

  def session_params
    params.require(:user).permit(:user_id, :email, :session_token)
  end

  def create
    @user = User.find_by user_id: session_params[:user_id], email: session_params[:email]
    if @user.nil? || session_params[:user_id].nil? || session_params[:email].nil?
      flash[:notice] = "Sorry but that user id/email is invalid"
      redirect_to login_path
    else
      session[:session_token] = @user.session_token
      flash[:notice] = "Welcome #{User.user_id(session_params)}"
      redirect_to home_home_path
    end
  end

  def new
  end

  def destroy
    session[:session_token] = nil
    flash[:notice] = "Logged Out"
    redirect_to login_path
  end
end
