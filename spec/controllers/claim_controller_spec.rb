require 'rails_helper'

RSpec.describe ClaimController, :type => :controller do
    describe "POST create" do
      before do
        visit "/register"
        fill_in "user_username", :with => "test_user"
        fill_in "user_password", :with => "test_pass"
        click_button "Create User"
        expect(page).to have_content "Welcome"
      end
      
      context "with valid attributes" do
        it "is valid with valid attributes" do
          expect(Claim.new(fname: "Asfour", lname: "Asfour", bday:"09-04-2001", claimTypes: "Pick", description: "Hello there everyone!", lawyers_id: 10)).to be_valid
        end
      end
    
      context "with invalid attributes" do
        #:claim_id, :fname, :lname, :bday, :claimTypes, :description, :lawyers_id, :users_id
        it "does not save the new contact" do
          expect { 
            post :create, {claim: {fname: 'Christopher', lname: 'Asfour', bday: '21-Jul-1989', claimTypes: 'Breach of contract disputes', description: 'Testing testing', lawyers_id: 1}}
          }.to change(Claim, :count).by(0)
        end
      end 
    end
end
