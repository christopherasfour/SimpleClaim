Feature: login to application
  As a new client
  So that I can file a small claim
  I want to first login to the application

Scenario: lawyer does not enter username
  When I go to /login_lawyer
  When I fill in "password" with "tester"
  When I press "Login"
  Then I should be on ./login_lawyer

Scenario: lawyer does not enter password
  When I go to /login_lawyer
  When I fill in "username" with "Bob"
  When I press "Login"
  Then I should be on "./login_lawyer"

Scenario: lawyer does not fill any field
  When I go to /login_lawyer
  When I press "Login"
  Then I should be on ./login_lawyer

Scenario: lawyer login is successful
  When I go to ./register_lawyer
  When I fill in "lawyer_username" with "Bob"
  And I fill in "lawyer_password" with "tester"
  And I fill in "lawyer_fname" with "bob"
  And I fill in "lawyer_lname" with "aaa"
  And I fill in "lawyer_bday" with "11/10/1990"
  And I fill in "lawyer_location" with "California"
  And I fill in "lawyer_education" with "Columbia University"
  And I fill in "lawyer_winRate" with "90"
  When I press "Create Lawyer"
  When I go to /login_lawyer
  When I fill in "username" with "Bob"
  When I fill in "password" with "tester"
  When I press "Login"
  Then I should be on "./welcome_lawyer"
  When I press "Log out"
  Then I should be on home page
