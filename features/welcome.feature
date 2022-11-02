Feature: welcome dashboard is present

  As a client
  So that I can file a small claim
  I should see the dashboard

Scenario: user is logged in
  Given I go to /login
  When I press "Create a new account"
  And I should be on ./register
  When I fill in "user_username" with "Bob"
  And I fill in "user_password" with "tester"
  And I press "Create User"
  Then I should be on ./welcome
  Then I should see "Welcome Bob"

Scenario: user can log out
  Given I go to /login
  When I press "Create a new account"
  And I should be on ./register
  When I fill in "user_username" with "Bob"
  And I fill in "user_password" with "tester"
  And I press "Create User"
  Then I should be on ./welcome
  When I press "Log out"
  Then I should be on ./login

Scenario: user can go to claim form page
  Given I go to /login
  When I press "Create a new account"
  And I should be on ./register
  When I fill in "user_username" with "Bob"
  And I fill in "user_password" with "tester"
  And I press "Create User"
  Then I should be on ./welcome
  When I press "Start a Small Claim"
  Then I should be on "/claim" page

Scenario: user can see previous claims
  Given I am on welcome
  Then the "Claim ID" field within "table#claims" should be equal to ""
