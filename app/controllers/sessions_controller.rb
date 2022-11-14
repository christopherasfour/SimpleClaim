require 'bcrypt'

class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:create, :new, :destroy, :login_lawyer, :create_lawyer]
  
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

  def create_lawyer
    @lawyer = Lawyer.find_by(username: params[:username])
    if @lawyer && @lawyer.authenticate(params[:password])
      session[:lawyer_id] = @lawyer.id
      redirect_to '/welcome_lawyer'
    else
      redirect_to '/login_lawyer'
      flash[:warning] = "Invalid username or password. Please try again!"
    end
  end

  def destroy
    if not session[:user_id].nil?
      session[:user_id] = nil
      redirect_to '/login'
    end
    if not session[:lawyer_id].nil?
      session[:lawyer_id] = nil
      redirect_to '/login_lawyer'
    end
  end

  def login_lawyer
    puts "login lawyer is hit"
  end

  # def welcome
  # end

  # def page_requires_login
  # end

  # def fileClaim
  # end

  # def createClaim
  # end
end
