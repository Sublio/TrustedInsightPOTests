Feature: Select Investor Type on Edit Profile screen
As a Trusted Inight user
I want to select  Investor Type on Edit Profile screen save it


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


Scenario: Select Investor Type
And I tap Skip button on Investor type screen on wizard
And I tap Skip button on What are you interest screen
And I tap Skip button on Complete your profie screen
And I tap Settings button on bottombar
And I tap Edit Profile button on Settings screen
And I am on Edit profile screen
And I scroll down on Edit profile screen
And I check that alert about mandatory field appears
And I tap Investor Type field
And I select type Other
And I check that alert about mandatory field disappears
And I tap Done button on Edit profile screen
And I check that I returned to Settings screen
 * I want to find Welcome screen