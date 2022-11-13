require 'rails_helper'


RSpec.describe UsersController, :type => :controller do
  describe "POST create" do
    context "with valid attributes" do
      it "is invalid with no attribute field" do
        expect {post :create, {user: {username: "", password: ""}}
        }.to change { User.count }.by(0)
        assert_redirected_to "/register"
      end
    end
  end
end