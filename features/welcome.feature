Feature: welcome dashboard is present

  As a client
  So that I can file a small claim
  I should see the dashboard

Scenario: user is logged in
  Given I visit "/welcome"
  Then I should see "Welcome Bob" 

Scenario: user can log out
  Given I visit "/welcome"
  And I press the "Logout" button
  Then I should see the "/login" page

Scenario: user can go to claim form page
  Given I visit "/welcome"
  And I press the "Start a Small Claim" button
  Then I should see the "/claim" page

Scenario: user can see previous claims
  Given I visit "/welcome"
  Then the "Claim ID" field within "table#claims" should be equal to "" 
