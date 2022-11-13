require 'rails_helper'

RSpec.describe ClaimController, :type => :controller do
    describe "POST create" do
      context "with valid attributes" do
        it "is valid with valid attributes" do
          session = { user_id: 10 }
          allow_any_instance_of(SessionsController).to receive(:session).and_return(session)
          allow_any_instance_of(ApplicationController).to receive(:logged_in?).and_return(true)
          expect {post :create, claim: FactoryBot.attributes_for(:claim)
          }.to change { Claim.count }.by(1)
        end
      end
    end

    describe "PUT update decision to 1" do
      let(:claim) { FactoryBot.create(:claim) }
      before(:each) do
        session = { user_id: 10 }
        allow_any_instance_of(SessionsController).to receive(:session).and_return(session)
        allow_any_instance_of(ApplicationController).to receive(:logged_in?).and_return(true)
        put :update, id: claim.id, decision: 1
      end
  
      it 'accepts an existing claim' do
        claim.reload
        expect(claim.decision).to eql(1)
      end
    end

    describe "PUT update decision to 2" do
      let(:claim) { FactoryBot.create(:claim) }
      before(:each) do
        session = { user_id: 10 }
        allow_any_instance_of(SessionsController).to receive(:session).and_return(session)
        allow_any_instance_of(ApplicationController).to receive(:logged_in?).and_return(true)
        put :update, id: claim.id, decision: 2
      end
  
      it 'rejects an existing claim' do
        claim.reload
        expect(claim.decision).to eql(2)
      end
    end
end
