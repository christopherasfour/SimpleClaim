require 'rails_helper'

RSpec.describe "Users" do
  describe "GET /new" do
    it "returns http success" do
      get "/users/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/register", {:username => "abc", :password => "bcd"}
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET /welcome" do
  #   it "returns http success" do
  #     get "/users"

end
