require 'rails_helper'

RSpec.describe ClaimController, :type => :controller do
    describe "POST create for user id 10" do
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

    describe "PUT update decision to 1 for user id 10" do
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

    describe "PUT update decision to 2 for user id 10" do
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
    describe "POST create for user id 11" do
      context "with valid attributes" do
        it "is valid with valid attributes" do
          session = { user_id: 11 }
          allow_any_instance_of(SessionsController).to receive(:session).and_return(session)
          allow_any_instance_of(ApplicationController).to receive(:logged_in?).and_return(true)
          expect {post :create, claim: FactoryBot.attributes_for(:claim)
          }.to change { Claim.count }.by(1)
        end
      end
    end

    describe "PUT update for user id 11 instance of decision to 1" do
      let(:claim) { FactoryBot.create(:claim) }
      before(:each) do
        session = { user_id: 11 }
        allow_any_instance_of(SessionsController).to receive(:session).and_return(session)
        allow_any_instance_of(ApplicationController).to receive(:logged_in?).and_return(true)
        put :update, id: claim.id, decision: 1
      end

      it 'accepts an existing claim' do
        claim.reload
        expect(claim.decision).to eql(1)
      end
    end

    describe "PUT update for user id 11 decision to 2" do
      let(:claim) { FactoryBot.create(:claim) }
      before(:each) do
        session = { user_id: 11 }
        allow_any_instance_of(SessionsController).to receive(:session).and_return(session)
        allow_any_instance_of(ApplicationController).to receive(:logged_in?).and_return(true)
        put :update, id: claim.id, decision: 2
      end

      it 'rejects an existing claim' do
        claim.reload
        expect(claim.decision).to eql(2)
      end
    end

    describe "POST create for user id 12" do
      context "with valid attributes" do
        it "is valid with valid attributes" do
          session = { user_id: 12 }
          allow_any_instance_of(SessionsController).to receive(:session).and_return(session)
          allow_any_instance_of(ApplicationController).to receive(:logged_in?).and_return(true)
          expect {post :create, claim: FactoryBot.attributes_for(:claim)
          }.to change { Claim.count }.by(1)
        end
      end
    end

    describe "Update progress by id" do 
      let(:claim) { FactoryBot.create(:claim) }
      before(:each) do
        session = { user_id: 11 }
        allow_any_instance_of(SessionsController).to receive(:session).and_return(session)
        allow_any_instance_of(ApplicationController).to receive(:logged_in?).and_return(true)
        put :update_claim_progress, id: claim.id, claim: {progress: 'Go to court'}
      end

      it 'has updated progress' do
        claim.reload
        expect(claim.progress).to eql('Go to court')
      end
    end

    describe "POST create for user id 12 with age 1" do
      context "with valid attributes" do
        it "is valid with valid attributes" do
          session = { user_id: 12 }
          claim = FactoryBot.attributes_for(:claim)
          claim[:bday] = '09-04-2021'
          allow_any_instance_of(SessionsController).to receive(:session).and_return(session)
          allow_any_instance_of(ApplicationController).to receive(:logged_in?).and_return(true)
          expect {post :create, claim: claim
          }.to change { Claim.count }.by(0)
        end
      end
    end

    describe "PUT update for user id 12 instance of decision to 1" do
      let(:claim) { FactoryBot.create(:claim) }
      before(:each) do
        session = { user_id: 12 }
        allow_any_instance_of(SessionsController).to receive(:session).and_return(session)
        allow_any_instance_of(ApplicationController).to receive(:logged_in?).and_return(true)
        put :update, id: claim.id, decision: 1
      end

      it 'accepts an existing claim' do
        claim.reload
        expect(claim.decision).to eql(1)
      end
    end

    describe "PUT update for user id 12 decision to 2" do
      let(:claim) { FactoryBot.create(:claim) }
      before(:each) do
        session = { user_id: 12 }
        allow_any_instance_of(SessionsController).to receive(:session).and_return(session)
        allow_any_instance_of(ApplicationController).to receive(:logged_in?).and_return(true)
        put :update, id: claim.id, decision: 2
      end

      it 'rejects an existing claim' do
        claim.reload
        expect(claim.decision).to eql(2)
      end
    end

    describe "PUT update claim description" do 
      let(:claim) { FactoryBot.create(:claim) }
      before(:each) do
        session = { user_id: 12 }
        allow_any_instance_of(SessionsController).to receive(:session).and_return(session)
        allow_any_instance_of(ApplicationController).to receive(:logged_in?).and_return(true)
        put :update_claim, id: claim.id, claim: {description: "updated description"}
      end

      it 'has updated description' do
        claim.reload
        expect(claim.description).to eql("updated description")
      end
    end
end
