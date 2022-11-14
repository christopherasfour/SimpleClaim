Feature: File a claim 

  As a client
  So that I can file a small claim
  I want to file a claim in the claims form page

Background: file a claim
  Given the following users exists:
  |id|username|password|
  |1000|Bob|tester|
  Given the following lawyers exist:
  |id|fname| lname | bday | location | education | winRate | aboutMe | username | password |
  |1|Jason|Lonet|11/10/1990|Simi Valley|Columbia University|89.1|My name is Jason. Hello!| aaa | aaa |
  |2|Mark|Smith|11/10/1990|Jacksonville|Harvard University|75.55|Hello everyone! My name is Mark| bbb | bbb | 
  |3|Justin|Fields|11/10/1990|Redville|Cornell University|95.11|Whats up everyone!| ccc | ddd|

  Given the following claims exist:
  |id|fname|lname|bday|claimTypes|lawyers_id|users_id|description|decision|
  |1|Bob|Test|11/10/1990|Loss Pick|1|10000|test|0|

Scenario: user can see the claim form page.
  Given an existing user with username Bob and password tester
  Then I should be on ./welcome
  When I go to ./claim
  Then I should see "File a Small Claim"

Scenario: user fills no fields in the claim form page.
  Given an existing user with username Bob and password tester
 When I go to ./claim
  When I press "Create New Claim"

Scenario: user fills only first name in the claim form page.
  Given an existing user with username Bob and password tester
  When I go to ./claim
  And I fill in "claim_fname" with "Bob"  
  And I press "Create New Claim"
  Then I should be on ./claim page

Scenario: user fills only last name in the claim form page.
  Given an existing user with username Bob and password tester
  When I go to ./claim
  And I fill in "claim_lname" with "Joe"  
  And I press "Create New Claim"
  Then I should be on ./claim page

Scenario: user fills only birthday in the claim form page.
  Given an existing user with username Bob and password tester
  When I go to ./claim
  And I fill in "claim_bday" with "11/10/1990"
  When I press "Create New Claim"
  Then I should be on ./claim page

Scenario: user can log out in claim form page
  Given an existing user with username Bob and password tester
  When I go to ./claim
  When I press "Log out"
  Then I should be on ./login page

Scenario: user fills only type of claim in the claim form page.
  Given an existing user with username Bob and password tester
  When I go to ./claim
  And I select "False arrest claims" from "claim_claimTypes"
  And I press "Create New Claim"
  Then I should be on ./claim page

Scenario: user fills only description in the claim form page.
  Given an existing user with username Bob and password tester
  When I go to ./claim
  And  I fill in "claim_description" with "I need help filing a small claim"
  And I press "Create New Claim"
  Then I should be on ./claim page


Scenario: user fills all fields in the claim process. 
  Given an existing user with username Bob and password tester
  When I go to ./claim
  And I fill in "claim_fname" with "Bob"
  And I fill in "claim_lname" with "Joe"
  And I fill in "claim_bday" with "11/10/1990"
  And I select "False arrest claims" from "claim_claimTypes"
  And I select "Jason Lonet" from "claim_lawyers_id"
  And I fill in "claim_description" with "I need help filing a small claim"
  And I press "Create New Claim"
  Then I should be on ./welcome

Scenario: lawyer accept claim
  Given an existing lawyer with username aaa and password aaa
  Then I should be on ./welcome_lawyer
  Then I press "Accept"
  Then I should be on ./welcome_lawyer

Scenario: lawyer reject claim
  Given an existing lawyer with username aaa and password aaa
  Then I should be on ./welcome_lawyer
  Then I press "Reject"
  Then I should be on ./welcome_lawyer
