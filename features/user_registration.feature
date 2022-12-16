Feature: register new account in application

  As a new client
  So that I can file a small claim
  I want to create a new account in the application

Scenario: user enters register page
  Given I go to /login
  When I press "Create a new client account"
  Then I should be on ./register

Scenario: user does not enter password in register page
  Given I go to /login
  When I press "Create a new client account"
  Then I should be on ./register
  When I fill in "user_password" with "tester"
  When I press "Create User"
  Then I should be on ./register

Scenario: user does not enter username in register page
  Given I go to /login
  And I press "Create a new client account"
  And I should be on ./register
  When I fill in "user_username" with "Bob"
  And I press "Create User"
  Then I should be on ./register

Scenario: user does not fill any field in register page
  Given I go to /login
  And I press "Create a new client account"
  And I should be on ./register
  And I press "Create User"
  Then I should be on ./register

Scenario: user login is successful
  Given I go to /login
  When I press "Create a new client account"
  And I should be on ./register
  When I fill in "user_username" with "Bob"
  And I fill in "user_password" with "tester"
  And I fill in "user_email" with "bob@abc.com"
  And I press "Create User"
  Then I should be on ./welcome
