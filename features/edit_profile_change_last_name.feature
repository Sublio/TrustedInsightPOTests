Feature: Changing Last name
As an Rosberry Tester
I want to change Last name and save it

Background:
 * I want to find Welcome screen
 * I am on the welcome screen
 * I tap on Access wit email button
 * I see Text field for inputting my email
 * I input not registered User mail
 * I tap Next button
 * I see first screen of Sign new user flow
 * I input correct first name
 * I input correct last name 
 * I input correct password
 * I tap on "SIGN UP" button
 * I tap on "SIGN UP" button and wait for Your Background
 * I proceed as worker
 * I pick random job title from given results
 * I pick random firm title from given results
 * I pick country and make sure that it appears
 * I select type Other
 * I tap Skip button on What are you interest screen
 * I tap Skip button on Complete your profie screen
 * I tap Settings button on bottombar

@logoutAtAnyCost
Scenario: Change Last name
And I am on Settings screen and check user name
And I tap Edit Profile button on Settings screen
And I am on Edit profile screen 
And I change my Last Name
And I tap Done button on Edit profile screen
And I check that I returned to Settings screen
And I check that user name has been changed
* I want to find Welcome screen