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
  describe "POST create" do
    context "with valid attributes" do
      it "is invalid with just password field" do
        expect {post :create, {user: {username: "", password: "justpassword"}}
        }.to change { User.count }.by(0)
        assert_redirected_to "/register"
      end
    end
  end
  describe "POST create" do
    context "with valid attributes" do
      it "is invalid with just username field" do
        expect {post :create, {user: {username: "justusername", password: ""}}
        }.to change { User.count }.by(0)
        assert_redirected_to "/register"
      end
    end
  end
  describe "POST create" do
    context "with valid attributes" do
      it "is valid with both fields" do
        expect {post :create, {user: {username: "validusername", password: "validpassword", email: "abc@client.com"}}
      }.to change { User.count }.by(1)
        assert_redirected_to "/welcome"
      end
    end
  end
end
