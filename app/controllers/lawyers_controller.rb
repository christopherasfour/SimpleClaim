require 'date'

class LawyersController < ApplicationController 
  skip_before_action :authorized, only: [:create, :new, :destroy]
  # def index
  #     @lawyers = Lawyer.all
  # end

  def new
      @lawyers = Lawyer.new
  end

  # def show
  #     @lawyers = Lawyer.find(params[:id])
  # end

  def age(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

  def create
    if (age(DateTime.parse(params[:lawyer][:bday])) < 18)
      flash[:notice] = "Please input a valid birthday."
      redirect_to '/register_lawyer'
    else
      @lawyers = Lawyer.create!(lawyer_params)
      session[:lawyer_id] = @lawyers.id
      redirect_to '/welcome_lawyer'
    end
  end

  # def edit
  #     @lawyers = lawyer.find(params[:id])
  # end

  # def update
  #     @lawyers = lawyer.find params[:id]
  #     @lawyers.update_attributes!(lawyer_params)
  #     flash[:notice] = "#{@lawyer.lawyerTypes} was successfully updated."
  #     redirect_to '/welcome'
  # end

  # def destroy
  # end

  private
  # To make clear which methods respond to requests, and which ones do not.
  def lawyer_params
      params.require(:lawyer).permit(:fname, :lname, :bday, :location, :education, :winRate, :aboutMe, :username, :password)
  end
end