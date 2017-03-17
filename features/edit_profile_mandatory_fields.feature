Feature: Check that First name required on Edit Profile screen
As a Trusted Insight user i want to check that 
First name, Last name and Company are the mandatory fields


@shouldLoginAsCherepashkin
Scenario: Check that First name required on Edit Profile screen

And I tap Edit Profile button on Settings screen
And I delete my First name from First name field
And I check that alert about mandatory field appears
And I try to leave Edit Profile screen without saving
And I tap Continue button on alert to leave Edit Profile without saving

@shouldLoginAsCherepashkin
Scenario: Check that Last name required on Edit Profile screen

And I tap Edit Profile button on Settings screen
And I delete my Last name from Last name field
And I check that alert about mandatory field appears
And I try to leave Edit Profile screen without saving
And I tap Continue button on alert to leave Edit Profile without saving

@shouldLoginAsCherepashkin
Scenario: Check that Company required on Edit Profile screen

And I tap Edit Profile button on Settings screen
And I delete my Company from Company field
And I check that alert about mandatory field appears
And I try to leave Edit Profile screen without saving
And I tap Continue button on alert to leave Edit Profile without saving