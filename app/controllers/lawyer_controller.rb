class LawyerController < ApplicationController 
def index
    @lawyer = Lawyer.all
end

def new
    @lawyer = Lawyer.new
end

def show
    @lawyer = Lawyer.find(params[:id])
end

def create
    @lawyer = Lawyer.create!(lawyer_params)
  end

def edit
    @lawyer = lawyer.find(params[:id])

end

def update
    @lawyer = lawyer.find params[:id]
    @lawyer.update_attributes!(lawyer_params)
    flash[:notice] = "#{@lawyer.lawyerTypes} was successfully updated."
    redirect_to '/welcome'
end

def destroy

end

private
# To make clear which methods respond to requests, and which ones do not.
def lawyer_params
    params.require(:lawyer).permit(:fname, :lname, :bday, :location, :education, :winRate, :aboutMe)
end
end