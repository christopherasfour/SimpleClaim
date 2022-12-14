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
    elsif not session[:lawyer_id].nil?
      session[:lawyer_id] = nil
    end
    redirect_to '/'
  end

  def login_lawyer
  end

  def view_claim
    @claim = Claim.find(params[:id])
  end

end
