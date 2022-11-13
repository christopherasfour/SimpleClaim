require 'rails_helper'

RSpec.describe LawyersController, :type => :controller do
  sign_me_in

  describe "POST create" do
    context "with valid attributes" do
      it "is valid with valid attributes" do
        # expect(Lawyer).to receive(:create!).with(FactoryBot.attributes_for(:lawyer))
        # get :search, { title: 'Aladdin' }
        expect {post :create, lawyer: FactoryBot.attributes_for(:lawyer)
        }.to change { Lawyer.count }.by(1)
      end
    end
  end
end
    