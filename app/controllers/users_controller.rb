class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  
  def new
    @user = User.new
  end

  def create
    if params[:user][:username].empty? or params[:user][:password].empty?
      redirect_to '/register'
      return
    end
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to '/welcome'
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end

end
