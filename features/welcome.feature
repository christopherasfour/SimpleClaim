Feature: welcome dashboard is present

  As a client
  So that I can file a small claim
  I should see the dashboard

Scenario: user is logged in
  Given I am on welcome
  Then I should see "WELCOME" 

Scenario: user can log out
  Given I am on welcome
  When I press "Logout"
  Then I should see the "/login" page

Scenario: user can go to claim form page
  Given I am on welcome
  When I press "Start a Small Claim"
  Then I should see the "/claim" page

Scenario: user can see previous claims
  Given I am on welcome
  Then the "Claim ID" field within "table#claims" should be equal to "" 
