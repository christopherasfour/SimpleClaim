class ClaimController < ApplicationController 
  def new
  end

  def index
    @claims = Claim.all
  end

  def show
    @claim = Claim.find(params[:id])
  end

  def create
    @claim = Claim.create!(claims_params)
    flash[:notice] = "Claim of type #{@claim.claimTypes} was successfully created."
    redirect_to '/welcome'   
  end

  def edit
    @claim = Claim.find(params[:id])
  end

  def update
    @claim = Claim.find params[:id]
    @claim.update_attributes!(claims_params)
    flash[:notice] = "#{@claim.claimTypes} was successfully updated."
    redirect_to '/welcome'
  end

  def destroy

  end

  private
  # To make clear which methods respond to requests, and which ones do not.
  def claims_params
    params.require(:claim).permit(:fname, :lname, :bday, :claimTypes, :description)
end
end
