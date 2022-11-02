Feature: register new account in application

  As a new client
  So that I can file a small claim
  I want to create a new account in the application 

Scenario: user enters register page
  Given I visit "/login"
  And I press the "Create a new client account button" button
  Then I should see the "/register" page

Scenario: user does not enter password in register page
  Given I visit "/login"
  And I press the "Create a new client account button" button
  And I should see the "/register" page
  When I enter "tester" in the "Password" field
  And I press the "Create User" button
  Then I should not see the "/welcome" page


Scenario: user does not enter username in register page
  Given I visit "/login"
  And I press the "Create a new client account button" button
  And I should see the "/register" page
  When I enter "Bob" in the "Username" field
  And I press the "Create User" button
  Then I should not see the "/welcome" page

Scenario: user does not fill any field in register page
  Given I visit "/login"
  And I press the "Create a new client account button" button
  And I should see the "/register" page
  And I press the "Create User" button
  Then I should see the "/login" page

Scenario: user login is successful
    Given I visit "/login"
    And I press the "Create a new client account button" button
    And I should see the "/register" page
    When I enter "Bob" in the "Username" field
    And I enter "tester" in the "Password" field
    And I press the "Create User" button
    Then I should see the "/welcome" page
