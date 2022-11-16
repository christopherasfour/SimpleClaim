## COMS 4152 SaaS Project Iteration #2

Group 2 Member Names:

Christopher Asfour (cra2139)

Richard Dongsoo Han (dh3062)

Han-Ju Tsai: (ht2572)

Sameer Khanna (stk2137)

## Branch for our iteration #2

```
proj-iter2
```

## Setup guidance for DB migrations:

```
rake db:purge
rake db:migrate
rake db:seed
```

Ruby version: 2.6.6, Rails version: 5.0.1

OS Environment: MacOS

Steps to build gemfile:

```
sudo bundle install --without production
```

If you run into nio4r issue, run ```gem install nio4r -v '1.2.1' -- --with-cflags="-Wno-error=implicit-function-declaration"```

Main features all completed. Acquired 100% Cucumber and 100% Rspec test coverage with high number of test cases.

## Heroku link 
```
https://salty-waters-29479.herokuapp.com/
```

## Test Scenarios to evaluate and test our product for iteration #2:

### Scenario 1: Create a claim:
1. Enter in your browser the above heroku link.
2. Create a new client account
3. After a new client account is created, you can click "Create Small Claim" button
4. Enter your information and select an advising lawyer
5. Done!

### Scenario 2: Accept/Reject a claim:
1. Enter in your browser the above heroku link.
2. Login as the lawyer account that you assigned your claim's advising lawyer to be
3. Click "Accept" to acknowledge that the lawyer will truly be advising claim or "Reject"
   to no longer acknowledge the claim. 
4. Done!

### Scenario 3: Modify a claim as client:
1. Enter in your browser the above heroku link.
2. Login to a client account with claims already made.
3. Click on the claim link.
4. Edit the claim information.
5. Click the "Update Claim" button.
6. Done!

### Scenario 4: View claim as lawyer:
1. Enter in your browser the above heroku link.
2. Login to a lawyer account with claims acknowledged.
3. Click on the claim link.
4. View the claim information.
5. Done!
