@reinstall
Feature: Alert on Edit Profile screen
As an Rosberry Tester
I want to check an alert when user tries to leave Edit profile screen w/o saving

#@landing_home
@shouldLoginAsCherepashkin
Scenario: Check an alert on Edit profile screen
And I am on Settings screen
And I tap Edit Profile button on Settings screen
And I am on Edit profile screen 
And I change my First Name
And I try to leave Edit Profile screen without saving
And I see alert with constant text
And I tap Cancel button to return to Edit Profile screen
And I check that alert has been dismissed
And I am on Edit profile screen
And I try to leave Edit Profile screen without saving
And I tap Continue button on alert to leave Edit Profile without saving
And I check that alert has been dismissed
And I check that I returned to Settings screen
