require 'rails_helper'

RSpec.describe Claim do
  describe '.types' do
    context "with valid attributes" do
      it "is valid with valid attributes" do
        expect(Claim.new(fname: "Asfour", lname: "Asfour", bday:"09-04-2001", claimTypes: "Loss Pick", description: "Hello there everyone!", lawyers_id: 10, users_id: 1)).to be_valid
      end
    end
  
    context "with invalid attributes" do
      it "the field description is missing" do
        expect(Claim.new(fname: "Asfour", lname: "Asfour", bday:"09-04-2001", claimTypes: "Loss Pick", lawyers_id: 10, users_id: 1)).not_to be_valid
      end

      it "the field fname is missing" do
        expect(Claim.new(lname: "Asfour", bday:"09-04-2001",  description: "Hello there everyone!", claimTypes: "Loss Pick", lawyers_id: 10, users_id: 1)).not_to be_valid
      end

    end 

    it 'returns all type' do
      expect(Claim.types).to eql(
        [
          "Loss Pick",
          "Breach of contract disputes",
          "Personal injury claims (such as dog bites)",
          "Collection on debts or loan repayments",
          "Professional negligence claims (like bad car repairs)",
          "Claims regarding the return of a renters security deposit or personal property",
          "Issues with contractors or home remodels",
          "Property damage claims",
          "Claims involving eviction notices or unlawful eviction",
          "False arrest claims",
          "Libel or slander cases",
          "Counterclaims to a lawsuit"
      ])
    end
  end

  it 'returns all progress_list' do
    expect(Claim.progress_list).to eql(
      [
        "Started claim",
        "File a claim with the court",
        "Send the filed claim to the defendant (serve to defendant)",
        "Get a court date",
        "Prepare your paperwork",
        "Go to court",
        "Get judgment (on day of or in a month)",
        "Collect/pay restitution",
      ]
    )
  end

  it 'returns 0 progress' do 
    claim = Claim.create(FactoryBot.attributes_for(:claim))
    expect(claim.progress_percentage).to eql(0)
  end
end
