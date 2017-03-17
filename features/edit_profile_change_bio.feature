Feature: Changing Bio
As a Trusted Insight user
I want to change my Bio and save it


@shouldLoginAsCherepashkin
Scenario: Change Bio
And I tap Edit Profile button on Settings screen
And I am on Edit profile screen 
And I remove info from Bio filed
And I tap Done button on Edit profile screen
And I check that I returned to Settings screen
And I tap Edit Profile button on Settings screen
And I am on Edit profile screen 
And I input random phrase in Bio field
And I tap Done button on Edit profile screen
And I check that I returned to Settings screen