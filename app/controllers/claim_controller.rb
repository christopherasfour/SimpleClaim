
class ClaimController < ApplicationController 
  # def index
  #   @claim = Claim.all
  # end

  def new
  end

  def show
  end

  def create
    @claim = Claim.create!(claim_params)
    flash[:notice] = "Claim of type #{@claim.claimTypes} was successfully created."
    redirect_to '/welcome'   
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

  # def destroy
  # end

  private
  # To make clear which methods respond to requests, and which ones do not.
  def claim_params
    params.require(:claim).permit(:fname, :lname, :bday, :claimTypes, :description, :lawyers_id, :users_id).merge(users_id: session[:user_id])
  end
end
