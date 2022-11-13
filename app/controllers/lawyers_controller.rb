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

  def create
    @lawyers = Lawyer.create!(lawyer_params)
    redirect_to '/welcome'
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