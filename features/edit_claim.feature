Feature: User can edit the claim
  As a client
  So that I can edit a small claim
  I want to edit a claim in the claims form page

Background: edit a claim

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
  |1|Bob|Test|11/10/1990|Loss Pick|1|1000|test description|0|

Scenario: user can see already filed claim.
  Given an existing user with username Bob and password tester
  Then I should be on ./welcome
  When I press "Edit Claim"
  Then I should be on /claim/1


Scenario: user can update a claim
  Given an existing user with username Bob and password tester
  Then I should be on ./welcome
  When I press "Edit Claim"
  Then I should be on /claim/1
  When I fill in "claim_description" with "updated description"
  And I press "Update Claim"
  Then I should be on ./welcome
  Then I should see "updated description"