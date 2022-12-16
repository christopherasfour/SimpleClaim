require 'rails_helper'

RSpec.describe LawyersController, :type => :controller do
  sign_me_in

  describe "POST create" do
    context "with valid attributes" do
      it "is valid with valid attributes" do
        expect {post :create, lawyer: FactoryBot.attributes_for(:lawyer)
        }.to change { Lawyer.count }.by(1)
      end
    end

    context "with invalid attributes" do
      it "is invalid" do 
        test_lawyer_attr = FactoryBot.attributes_for(:lawyer)
        test_lawyer_attr[:bday] = '04-04-2021'
        expect {post :create, lawyer: test_lawyer_attr
        }.to change { Lawyer.count }.by(0)
      end
    end
  end

  describe "POST new" do
    let!(:lawyer) { Lawyer.new }
    it 'should render the new template' do
      get :new
      expect(response).to render_template('new')
    end
  end
end
    