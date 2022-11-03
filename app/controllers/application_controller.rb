class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authorized
  helper_method :current_user
  helper_method :logged_in?

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def authorized
    redirect_to '/login' unless logged_in?
  end
end

#User Stories (40%): provides user stories of how the service or product is used; the user stories have been well thought of; and user stories pass cucumber with good coverage.
#Minimal Viable Prototype (20%): demonstrates that effort has been spent on making a working prototype with minimum features.
#Testing (30%): good test coverage in RSpec; well thought out tests; tests pass.
#Deployment (10%): deployment (most likely to Heroku) is complete; no visible errors.
