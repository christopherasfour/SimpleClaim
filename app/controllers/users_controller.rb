class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def is_a_valid_email?(email)
    email =~ /\A[^@\s]+@[^@\s]+\z/
  end

  def new
    @user = User.new
  end

  def create
    if (!is_a_valid_email?(params[:user][:email]))
      flash[:warning] = "Please input a valid email address."
      redirect_to '/register'
      return
    end
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
    params.require(:user).permit(:username, :password, :email)
  end

end
