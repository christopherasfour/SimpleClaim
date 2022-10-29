Feature: login to application

  As a new client
  So that I can file a small claim
  I want to first login to the application

Background: logins in database

  Given the following logins exist:
  | username        | password | release_date |

Scenario: user does not enter username
  Given I visit "/login"
  When I enter "tester" in the "tester" field
  And I press the "login" button
  Then I should not see the "Welcome" page

Scenario: user does not enter password
  Given I visit "/login"
  When I enter "Bob" in the "username" field
  And I press the "login" button
  Then I should not see the "Welcome" page

Scenario: user does not fill any field
  Given I visit "/login"
  And I press the "login" button
  Then I should not see the "Welcome" page

Scenario: user login is successful
    Given I visit "/login"
    When I enter "Bob" in the "username" field
    And I enter "tester" in the "password" field
    And I press the "login" button
    Then I should see the "Welcome" page
