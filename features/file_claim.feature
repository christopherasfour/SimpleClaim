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
  And I press the "Claim" button
  Then I should see "Claim" page

Scenario: Write a the claim process. 
  Given I visit "/welcome"  
  And I press the "Claim" button
  And  I fill in "Title" with "Test Claim Title"
  And  I fill in "Name" with "Bob Joe"
  And  I fill in "Lawyer" with "Harvey Specter"
  And  I fill in "Description" with "generic description"
  And  I press the "Submit My Claim" button
  Then I should see "My Claims" page
  And I should see "Test Claim Title"