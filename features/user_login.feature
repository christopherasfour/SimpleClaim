Feature: login to application
  As a new client
  So that I can file a small claim
  I want to first login to the application


Scenario: user does not enter username
  When I go to /login
  When I fill in "password" with "tester"
  When I press "Login"
  Then I should be on ./login

Scenario: user does not enter password
  When I go to /login
  When I fill in "username" with "Bob"
  When I press "Login"
  Then I should be on "./login"

Scenario: user does not fill any field
  When I go to /login
  When I press "Login"
  Then I should be on ./login

Scenario: user login is successful
  When I go to /register
  When I fill in "user_username" with "Bob"
  When I fill in "user_password" with "tester"
  When I fill in "user_email" with "abc@gmail.com"
  And I press "Create User"
  When I go to /login
  When I fill in "username" with "Bob"
  When I fill in "password" with "tester"
  When I press "Login"
  Then I should be on "./welcome"