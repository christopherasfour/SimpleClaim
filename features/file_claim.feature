Feature: File a claim 

  As a new client
  So that I can file a small claim
  I want to file a claim

Background: file a claim

Scenario: Seeing the homepage for the SimpleClaim website. 
  Given I visit "/welcome"  
  Then I should see "Welcome"

Scenario: Start the claim process. 
  Given I visit "/welcome"  
  And I press the "claim" button
  Then I should see "Claim" page

