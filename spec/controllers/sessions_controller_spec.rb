require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do
    let!(:lawyer){
      Lawyer.create(FactoryBot.attributes_for(:lawyer))
    }
    describe "POST create_lawyer" do
        context "with valid lawyer attributes" do
          it "logins lawyer successfully" do
            Lawyer.stub_chain(:find_by, :authenticate).with({"username": "lawyer1"}).with("pass").and_return(true)
            Lawyer.stub_chain(:find_by, :id).and_return(10)
            post :create_lawyer, {username: "lawyer1", password: "pass"}
            assert_redirected_to '/welcome_lawyer'
          end
        end
        context "with invalid valid lawyer attributes" do
          it "logins lawyer failed" do
            Lawyer.stub_chain(:find_by, :authenticate).with({"username": "lawyer"}).with("wrong_pass_word").and_return(false)
            post :create_lawyer, {username: "lawyer", password: "wrong_pass_word"}
            assert_redirected_to '/login_lawyer'
          end
        end
    end

  describe "DELETE create_lawyer" do
    context "" do
      it "logs out an user" do
        session = { user_id: 10 }
        allow_any_instance_of(SessionsController).to receive(:session).and_return(session)
        post :destroy, {username: "Bob", password: "pass"}
      end
      it "logs out a lawyer" do
        session = { lawyer_id: 10 }
        allow_any_instance_of(SessionsController).to receive(:session).and_return(session)
        post :destroy, {username: "lawyer1", password: "pass"}
      end
    end
  end
end