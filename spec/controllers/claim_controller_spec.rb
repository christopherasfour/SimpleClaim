require 'rails_helper'

RSpec.describe ClaimController do
    describe "POST #create" do
      it "should create a new claim" do
        post :create, FactoryGirl.attributes_for(:claim)
        post :create, {claim: {fname: "Joey", lname: "Asfour", bday:"09-04-2001", claimTypes: "Pick", description: "Hello there everyone!", lawyers_id: 10 }}
        expect(Claim.find_by(fname: 'Joey')).should_not be_nil
        # expect {post :create, claim: FactoryGirl.attributes_for(:claim)
        # }.to change { Claim.count }.by(1)
      end
    end

    describe "POST create" do
      context "with valid attributes" do
        it "creates a new contact" do
          expect{
            post :create, claim: FactoryGirl.attributes_for(:claim)
          }.to change(Claim,:count).by(1)
        end
    
        it "redirects to the new contact" do
          post :create, claim: FactoryGirl.attributes_for(:claim)
          response.should redirect_to Claim.last
        end
      end
    
      context "with invalid attributes" do
        it "does not save the new contact" do
          expect{
            post :create, claim: FactoryGirl.attributes_for(:invalid_claim)
          }.to_not change(Contact,:claim)
        end
    
        it "re-renders the new method" do
          post :create, claim: FactoryGirl.attributes_for(:invalid_claim)
          response.should render_template :new
        end
      end 
    end
end
