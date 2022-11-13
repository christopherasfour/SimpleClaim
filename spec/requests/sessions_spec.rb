require 'rails_helper'

RSpec.describe SessionsController do
  before(:all) do
    User.create(:username => "abc", :password => "abc")
  end
  
  describe "GET /new" do
    it "returns http success" do
      post "/login" , {username: 'abc', password: 'abc'}
      expect(response).to have_http_status(302)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      post "/login"
      expect(response).to have_http_status(302)
    end
  end

end
