require 'rails_helper'

RSpec.describe ClaimController, :type => :controller do
    describe "POST create" do
      before do
        visit "/register"
        fill_in "user_username", :with => "test_user"
        fill_in "user_password", :with => "test_pass"
        click_button "Create User"
        expect(page).to have_content "Welcome"
      end
    
    end
end
