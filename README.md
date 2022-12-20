## COMS 4252 SaaS Project Launch

Group 2 Member Names:

Christopher Asfour (cra2139)

Richard Dongsoo Han (dh3062)

Han-Ju Tsai: (ht2572)

Sameer Khanna (stk2137)

## Branch for our Project Launch

```
master
```

## Setup guidance for DB migrations:

```
rake db:purge
rake db:migrate
rake db:seed
```

Ruby version: 2.6.6, Rails version: 5.0.1

OS Environment: MacOS 12.6 Monterey

Steps to build gemfile:

```
sudo bundle install --without production
```

If you run into nio4r issue, run ```gem install nio4r -v '1.2.1' -- --with-cflags="-Wno-error=implicit-function-declaration"```

Main features all completed. Acquired 100% Cucumber and 100% Rspec test coverage with high number of test cases.

## Heroku link
```
https://still-basin-90811.herokuapp.com/
```

## Test Scenarios to evaluate and test our product for final launch:

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

### Scenario 5: Be linked out to email client or lawyer
1. Enter in your browser the above heroku link.
2. Login to a client or lawyer account with claims made or acknowledged.
3. a) If logged in as a client with claims that are still pending a decision by a lawyer, you will see a lock icon. Once lawyer accepts the claim, you should see a button that says "Email [Lawyer's First Name]". 
   b) If logged in as a lawyer with claims initially assigned to you, you should see a button that says "Email [Client's First Name]". 
4. Once clicked, you should be linked to your browser's default email provider with the lawyers email listed in the "To:" field

### Scenario 6: Update progress of claim as lawyer
1. Enter in your browser the above heroku link.
2. Login to a lawyer account with claims acknowledged.
3. Click on the claim link.
4. Select progress drop-down field and select new field.
5. Click the "Update Progress" button.
6. Logout and log in as a client of the claim
7. You should see updated progress bar of the claim
8. Done!
