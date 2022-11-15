Feature: welcome dashboard is present
  As a client
  So that I can file a small claim
  I should see the dashboard

Background: create a user

  Given the following lawyers exist:
  |id|fname| lname | bday | location | education | winRate | aboutMe | username | password |
  |1|Jason|Lonet|11/10/1990|Simi Valley|Columbia University|89.1|My name is Jason. Hello!| aaa | aaa |
  |2|Mark|Smith|11/10/1990|Jacksonville|Harvard University|75.55|Hello everyone! My name is Mark| bbb | bbb | 
  |3|Justin|Fields|11/10/1990|Redville|Cornell University|95.11|Whats up everyone!| ccc | ddd|

  Given the following claims exist:
  |id|fname| lname | bday | claimTypes | description | lawyers_id | created_at | updated_at |
  |1|fasfa|fsaf|1212-02-22 00:00:00.000000|Pick|fdsas||2022-11-02 13:06:29.640928|2022-11-02 13:06:29.640928|
  |2|Christopher|Asfour|1989-07-21 00:00:00.000000|Breach of contract disputes|Testing testing|1|2022-11-02 14:28:27.409642|2022-11-02 14:28:27.409642|
  |3|Luke|Cage|1990-07-21 00:00:00.000000|Pick|Testing 123|2|2022-11-02 14:28:27.411194|2022-11-02 14:28:27.411194|
  |4|Richard|Mike|1989-08-21 00:00:00.000000|Pick|Testing 1111|3|2022-11-02 14:28:27.412596|2022-11-02 14:28:27.412596|

Scenario: user is logged in
  Given I go to /login
  When I press "Create a new client account"
  And I should be on ./register
  When I fill in "user_username" with "Bob"
  And I fill in "user_password" with "tester"
  And I press "Create User"
  Then I should be on ./welcome
  Then I should see "Welcome Bob"

Scenario: user can log out
  Given I go to /login
  When I press "Create a new client account"
  And I should be on ./register
  When I fill in "user_username" with "Bob"
  And I fill in "user_password" with "tester"
  And I press "Create User"
  Then I should be on ./welcome
  When I press "Log out"
  Then I should be on home page

Scenario: user number one can go to claim form page
  Given I go to /login
  When I press "Create a new client account"
  And I should be on ./register
  When I fill in "user_username" with "Bob"
  And I fill in "user_password" with "tester"
  And I press "Create User"
  Then I should be on ./welcome
  When I follow "Start a Small Claim"
  Then I should be on "/claim" page

Scenario: user number two can go to claim form page
  Given I go to /login
  When I press "Create a new client account"
  And I should be on ./register
  When I fill in "user_username" with "columbiauserone"
  And I fill in "user_password" with "bearlions"
  And I press "Create User"
  Then I should be on ./welcome
  When I follow "Start a Small Claim"
  Then I should be on "/claim" page

