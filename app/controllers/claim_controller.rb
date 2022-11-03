class ClaimController < ApplicationController 
  def index
    @claim = Claim.all
  end

  def new
  end

  def show
    @claim = Claim.find(params[:id])
  end

  def create
    puts "claim params"
    puts claim_params
    @claim = Claim.create!(claim_params)
    flash[:notice] = "Claim of type #{@claim.claimTypes} was successfully created."
    redirect_to '/claim'   
  end

  # def edit
  #   @claim = Claim.find(params[:id])
  # end

  # def update
  #   @claim = Claim.find params[:id]
  #   @claim.update_attributes!(claim_params)
  #   flash[:notice] = "#{@claim.claimTypes} was successfully updated."
  #   redirect_to '/claim'
  # end

  # def destroy
  # end

  private
  # To make clear which methods respond to requests, and which ones do not.
  def claim_params
    params.require(:claim).permit(:fname, :lname, :bday, :claimTypes, :description, :lawyers_id)
end
end
