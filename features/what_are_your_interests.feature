Feature: As new user I can select interests


  Background:

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
    * I tap SKIP button
    * I wait for Investor Type page
    * I tap SKIP button

  Scenario: I can tap Show More button and expand all available interests

    * I check if Show More button works
    * I scroll all the way to the top
    * I check if I can pick tags