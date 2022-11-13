require 'rails_helper'

RSpec.describe User, type: :model do
  describe "User valid" do
    context "without valid attributes" do
      it "is not valid with valid attributes" do
        expect(User.new).to_not be_valid
      end
    end
    context "with valid attributes" do
      it "is valid with valid attributes" do
        expect(User.new(username: "Asfour", password: "Asfour")).to be_valid
      end
    end
  end
end