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
    @claim = post.new(params[:post])

    if @claim.save
      redirect_to claims_path,  :notice => "Your post was saved"
    else
      render "new"
      end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  # To make clear which methods respond to requests, and which ones do not.
  def claims_params
    params.require(:claim).permit(:fname, :lname, :description, :birthday)
end
end
