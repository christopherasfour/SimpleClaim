require 'bcrypt'

class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:create, :new]
  
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to '/welcome'
    else
        redirect_to '/login'
        flash[:warning] = "Invalid username or password. Please try again!"
    end
  end

  def login
  end

  def welcome
  end

  def page_requires_login
  end

  def fileClaim
  end

  def createClaim
  end
end
