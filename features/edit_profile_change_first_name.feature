@reinstall
Feature: Changing First name
As an Rosberry Tester
I want to change First name and save it


@shouldLoginAsCherepashkin
Scenario: Change First name
And I am on Settings screen and check user name
And I tap Edit Profile button on Settings screen
And I am on Edit profile screen 
And I change my First Name
And I tap Done button on Edit profile screen
And I check that I returned to Settings screen
And I check that user name has been changed