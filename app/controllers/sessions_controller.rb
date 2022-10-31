require 'bcrypt'

class SessionsController < ApplicationController
  
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    puts "resgister"
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to '/welcome'
    else
        redirect_to '/login'
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
