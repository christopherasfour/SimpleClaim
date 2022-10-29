Feature: store claim information in db for lawyers to see

  As a lawyer
  So that I can quickly browse claims appropriate for me to work on
  I want to see claims that are for me

Background: claims have been added to database

  Given the following claims exist:
  | title                   | name            | lawyer            | description    | date         |
  | Claim Title #1          | Adam Smith      | Saul Goodman      | description #1 | 10-Oct-2022  |
  | Claim Title #2          | Tessia Leywin   | Marshall Eriksen  | description #2 | 5-Jan-2001   |
  | Claim Title #3          | Grey Willbeck   | Saul Goodman      | description #3 | 25-Apr-2001  |
  | Claim Title #4          | Michael Ross    | Harvey Specter    | description #4 | 6-Apr-1968   |
  | Claim Title #5          | Caera Denoir    | Rachel Zane       | description #5 | 5-Nov-2004   |

  Then 5 seed claims should exist

Scenario: lawyer finding all their cases
  And I login as "Saul Goodman"
  And I press the "My Cases" button
  Then  I should see "Claim Title #1"
  And   I should see "Claim Title #3"

Scenario: lawyer finding recent cases
  And I login as "Saul Goodman"
  And I press the "My Cases" button
  And I press the "Recent Only" button
  Then  I should see "Claim Title #1"
  And   I should see "Claim Title #3"
