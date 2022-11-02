Feature: File a claim 

  As a client
  So that I can file a small claim
  I want to file a claim in the claims form page

Background: file a claim

Scenario: user can see the claim form page.
  Given I visit "/claim"  
  Then I should see "File a Small Claim"

Scenario: user fills no fields in the claim form page.
  Given I visit "/claim"  
  And I press the "Create New Claim" button
  Then I should not see the "/welcome" page

Scenario: user fills only first name in the claim form page.
  Given I visit "/claim"
  And I fill in "First Name" with "Bob"  
  And I press the "Create New Claim" button
  Then I should not see the "/welcome" page

Scenario: user fills only last name in the claim form page.
  Given I visit "/claim"
  And I fill in "Last Name" with "Joe"  
  And I press the "Create New Claim" button
  Then I should not see the "/welcome" page

Scenario: user fills only birthday in the claim form page.
  Given I visit "/claim"
  And I fill in "Birthday" with "11/10/1990"
  And I press the "Create New Claim" button
  Then I should not see the "/welcome" page

Scenario: user can log out in claim form page
  Given I visit "/claim"
  And I press the "Logout" button
  Then I should see the "/login" page

Scenario: user fills only type of claim in the claim form page.
  Given I visit "/claim"
  And I fill in "Select the type of claim you will be filing" with "False arrest claims"
  And I press the "Create New Claim" button
  Then I should not see the "/welcome" page

Scenario: user fills only description in the claim form page.
  Given I visit "/claim"  
  And  I fill in "Describe more about your particular case" with "I need help filing a small claim"
  And I press the "Create New Claim" button
  Then I should not see the "/welcome" page

Scenario: user fills all fields in the claim process. 
  Given I visit "/claim"  
  And I fill in "First Name" with "Bob"
  And I fill in "Last Name" with "Joe"
  And I fill in "Birthday" with "11/10/1990"
  And  I fill in "Select the type of claim you will be filing" with "False arrest claims"
  And  I fill in "Describe more about your particular case" with "I need help filing a small claim"
  And I press the "Create New Claim" button
  Then I should see the "/welcome" page
  And I should see the "Description" field within "table#claims" should be equal to "I need help filing a small claim" 
