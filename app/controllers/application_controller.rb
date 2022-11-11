class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authorized
  helper_method :current_user
  helper_method :current_lawyer
  helper_method :lawyer_logged_in?
  helper_method :logged_in?

  def current_user
    User.find_by(id: session[:user_id])
  end

  def current_lawyer
    Lawyer.find_by(id: session[:lawyer_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def lawyer_logged_in?
    !current_lawyer.nil?
  end

  def authorized
    if !logged_in?
      redirect_to '/login' unless logged_in?
    elsif !lawyer_logged_in?
      redirect_to '/login_lawyer' unless lawyer_logged_in?
    else
      redirect_to '/index'
    end
    # redirect_to '/login' unless logged_in? or lawyer_logged_in?
  end
end

