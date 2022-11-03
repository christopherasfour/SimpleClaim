require 'rails_helper'

RSpec.describe ClaimController do
    describe "POST #create" do
      it "should create a new claim" do
        # post :create, FactoryGirl.attributes_for(:claim)
        # # post :create, {claim: {fname: "Joey", lname: "Asfour", bday:"09-04-2001", claimTypes: "Pick", description: "Hello there everyone!", lawyers_id: 10  }}
        # expect(Claim.find_by(fname: 'Joey')).should_not be_nil
        expect {post :create, claim: FactoryGirl.attributes_for(:claim)
        }.to change { Claim.count }.by(1)
      end
    end
end

# {params: { params1: value1, params2: value2}}

# RSpec.describe ClaimController do
#     describe "update" do
#         post :update, claim: {fname: "Chris", lname: "Asfour", bday:"09-03-2001", claimTypes: "Pick", description: "Hello there everyone!", lawyers_id: 1 }
#         (Claim.find_by(fname: "Chris")).should_not be_nil
#     end
# end

#https://github.com/learn-co-curriculum/validations-in-controller-actions-rails-lab/issues/9
