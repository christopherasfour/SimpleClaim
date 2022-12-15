# Add a declarative step here for populating the DB with movies.
# USER STORIES GO HERE 

Given /the following lawyers exist/ do |lawyers_table|
  lawyers_table.hashes.each do |lawyer|
    Lawyer.create!(lawyer)
  end
end

Given /an existing user with username (.*) and password (.*)/ do |username, password|
  visit "login"
  fill_in "username", :with => username
  fill_in "password", :with => password
  click_button("Login")
end

Given /an existing lawyer with username (.*) and password (.*)/ do |username, password|
  visit "login_lawyer"
  fill_in "username", :with => username
  fill_in "password", :with => password
  click_button("Login")
end

Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    User.create user
  end
end

Given /the following claims exist/ do |claims_table|
    claims_table.hashes.each do |claim|
      Claim.create claim
    end
  end
  
Then /(.*) seed claims should exist/ do | n_seeds |
  expect(Claim.count).to eq n_seeds.to_i
end

Then /I should see (.*) claimTypes/ do |num|
  expect(Claim.types.length).to eq num.to_i
end

Then /I should see (.*) progresses/ do |num|
  expect(Claim.progress_list.length).to eq num.to_i
end
#We should write steps for creating a claim, (name, age, type of claim, ...)

# Given /the following movies exist/ do |movies_table|
#   movies_table.hashes.each do |movie|
#     # each returned element will be a hash whose key is the table header.
#     # you should arrange to add that movie to the database here.
#   end
#   pending "Fill in this step in movie_steps.rb"
# end

# Then /(.*) seed movies should exist/ do | n_seeds |
#   expect(Movie.count).to eq n_seeds.to_i
# end

# # Make sure that one string (regexp) occurs before or after another one
# #   on the same page

# Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
#   #  ensure that that e1 occurs before e2.
#   #  page.body is the entire content of the page as a string.
#   pending "Fill in this step in movie_steps.rb"
# end

# # Make it easier to express checking or unchecking several boxes at once
# #  "When I uncheck the following ratings: PG, G, R"
# #  "When I check the following ratings: G"

# When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
#   # HINT: use String#split to split up the rating_list, then
#   #   iterate over the ratings and reuse the "When I check..." or
#   #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
#   pending "Fill in this step in movie_steps.rb"
# end

# # Part 2, Step 3
# Then /^I should (not )?see the following movies: (.*)$/ do |no, movie_list|
#   # Take a look at web_steps.rb Then /^(?:|I )should see "([^"]*)"$/
#   pending "Fill in this step in movie_steps.rb"
# end

# Then /I should see all the movies/ do
#   # Make sure that all the movies in the app are visible in the table
#   pending "Fill in this step in movie_steps.rb"
# end

# ### Utility Steps Just for this assignment.

# Then /^debug$/ do
#   # Use this to write "Then debug" in your scenario to open a console.
#    require "byebug"; byebug
#   1 # intentionally force debugger context in this method
# end

# Then /^debug javascript$/ do
#   # Use this to write "Then debug" in your scenario to open a JS console
#   page.driver.debugger
#   1
# end

# Then /complete the rest of of this scenario/ do
#   # This shows you what a basic cucumber scenario looks like.
#   # You should leave this block inside movie_steps, but replace
#   # the line in your scenarios with the appropriate steps.
#   fail "Remove this step from your .feature files"
# end
