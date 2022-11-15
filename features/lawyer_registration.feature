Feature: register new lawyer account in application

  As a new lawyer
  So that I can see a filed claim
  I want to create a new lawyer account in the application

Scenario: lawyer enters register page       
  Given I go to /login_lawyer                
  Then I press "Create a new lawyer account" 
  Then I should be on ./register_lawyer
  Then I should see "Win rate"

Scenario: lawyer enters register page
  Given I go to /login_lawyer                
  Then I should be on ./login_lawyer
  Then I should see "Create a new lawyer account"
  When I press "Create a new lawyer account"
  Then I should be on ./register_lawyer

Scenario: lawyer registration is successful test one
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
  Then I should be on ./welcome_lawyer

Scenario: lawyer registration is successful test two
  When I go to ./register_lawyer
  When I fill in "lawyer_username" with "Tomname"
  And I fill in "lawyer_password" with "Tompassword"
  And I fill in "lawyer_fname" with "Tom"
  And I fill in "lawyer_lname" with "Brady"
  And I fill in "lawyer_bday" with "11/10/1992"
  And I fill in "lawyer_location" with "New York"
  And I fill in "lawyer_education" with "Cornell University"
  And I fill in "lawyer_winRate" with "92"
  When I press "Create Lawyer"
  Then I should be on ./welcome_lawyer
