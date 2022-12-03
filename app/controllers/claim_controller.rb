require 'date'

class ClaimController < ApplicationController 
  # def index
  #   @claim = Claim.all
  # end

  def new
  end

  def show
  end

def age(dob)
  now = Time.now.utc.to_date
  now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
end

  def create
    if (age(DateTime.parse(params[:claim][:bday])) < 18 ) 
      flash[:notice] = "Please input a valid birthday."
      redirect_to '/claim'
    else
      @claim = Claim.create!(claim_params)
      flash[:notice] = "Claim of type #{@claim.claimTypes} was successfully created."
      redirect_to '/welcome'
    end     
  end

  def update
    @claim = Claim.find (params[:id])
    @claim.update(decision: params[:decision])
    if (params[:decision] == "1")
      flash[:notice] = "Awesome! You are now advising Claim ##{@claim.id} submitted by #{@claim.fname + " " + @claim.lname}."
    elsif (params[:decision] == "2")
      flash[:warning] = "You are not advising Claim #{@claim.id} anymore submitted by #{@claim.fname + " " + @claim.lname}."
    end
    redirect_to '/welcome_lawyer'
  end

  def update_claim
    @claim = Claim.find (params[:id])
    if @claim.decision != 1 and params[:lawyers_id] != @claim.lawyers_id
      @claim.update(decision: 0)
    end
    @claim.update(claim_params)
    redirect_to '/welcome'
  end

  def update_claim_progress
    @claim = Claim.find (params[:id])
    @claim.update(progress: params[:claim][:progress])
    redirect_to '/welcome_lawyer'
  end

  private
  # To make clear which methods respond to requests, and which ones do not.
  def claim_params
    params.require(:claim).permit(:fname, :lname, :bday, :claimTypes, :description, :lawyers_id, :users_id, :progress).merge(users_id: session[:user_id])
  end
end
