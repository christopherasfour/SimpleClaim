Feature: File a claim 

  As a client
  So that I can file a small claim
  I want to file a claim in the claims form page

Background: file a claim
  Given the following users exists:
  |id|username|password|
  |1000|Bob|tester|
  Given the following lawyers exist:
  |id|fname| lname | bday | location | education | winRate | aboutMe | created_at | updated_at | 
  |1|Jason|Lonet|1989-04-21 00:00:00.000000|Simi Valley|Columbia University|89.1|My name is Jason. Hello!|2022-11-02 14:28:27.397790|2022-11-02 14:28:27.397790|
  |2|Mark|Smith|1999-08-21 00:00:00.000000|Jacksonville|Harvard University|75.55|Hello everyone! My name is Mark|2022-11-02 14:28:27.400343|2022-11-02 14:28:27.400343|
  |3|Justin|Fields|2005-09-11 00:00:00.000000|Redville|Cornell University|95.11|Whats up everyone!|2022-11-02 14:28:27.401985|2022-11-02 14:28:27.401985|

Scenario: user can see the claim form page.
  Given an existing user with username Bob and password tester
  Then I should be on ./welcome
  When I press "Start a Small Claim"
  Then I should see "File a Small Claim"

Scenario: user fills no fields in the claim form page.
  Given an existing user with username Bob and password tester
  When I press "Start a Small Claim"
  Then I should be on ./claim
  When I press "Create New Claim"

Scenario: user fills only first name in the claim form page.
  Given an existing user with username Bob and password tester
  When I press "Start a Small Claim"
  Given I go to "/claim"
  And I fill in "claim_fname" with "Bob"  
  And I press "Create New Claim"
  Then I should be on ./claim page

Scenario: user fills only last name in the claim form page.
  Given an existing user with username Bob and password tester
  When I press "Start a Small Claim"
  Given I go to "/claim"
  And I fill in "claim_lname" with "Joe"  
  And I press "Create New Claim"
  Then I should be on ./claim page

Scenario: user fills only birthday in the claim form page.
  Given an existing user with username Bob and password tester
  And I press "Start a Small Claim"
  Given I go to "/claim"
  And I fill in "claim_bday" with "11/10/1990"
  When I press "Create New Claim"
  Then I should be on ./claim page

Scenario: user can log out in claim form page
  Given an existing user with username Bob and password tester
  And I press "Start a Small Claim"
  Given I go to "/claim"
  When I press "Log out"
  Then I should be on ./login page

Scenario: user fills only type of claim in the claim form page.
  Given an existing user with username Bob and password tester
  And I press "Start a Small Claim"
  Given I go to "/claim"
  And I select "False arrest claims" from "claim_claimTypes"
  And I press "Create New Claim"
  Then I should be on ./claim page


Scenario: user fills only description in the claim form page.
  Given an existing user with username Bob and password tester
  And I press "Start a Small Claim"
  Given I go to "/claim"  
  And  I fill in "claim_description" with "I need help filing a small claim"
  And I press "Create New Claim"
  Then I should be on ./claim page


Scenario: user fills all fields in the claim process. 
  Given an existing user with username Bob and password tester
  And I press "Start a Small Claim"
  And I press "Create New Claim"
  And I fill in "claim_fname" with "Bob"
  And I fill in "claim_lname" with "Joe"
  And I fill in "claim_bday" with "11/10/1990"
  And I select "False arrest claims" from "claim_claimTypes"
  And I fill in "claim_description" with "I need help filing a small claim"
  And I press "Create New Claim"
  Then I should be on ./claim page

Scenario: tester
  Given an existing user with username "Bob" and password "tester"
  And I should be on ./welcome