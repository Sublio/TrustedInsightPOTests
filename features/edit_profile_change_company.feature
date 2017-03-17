Feature: Changing Company name
As an Rosberry Tester
I want to change Company name and save it


@shouldLoginAsCherepashkin
Scenario: Change Company name
And I am on Settings screen and check Company name
And I tap Edit Profile button on Settings screen
And I am on Edit profile screen 
And I change my Company Name
And I tap Done button on Edit profile screen
And I check that I returned to Settings screen
And I check that Company name has been changed
And I tap Edit Profile button on Settings screen
And I am on Edit profile screen 
And I return Company name back
And I tap Done button on Edit profile screen
And I check that I returned to Settings screen