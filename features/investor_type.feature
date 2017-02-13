Feature: As new user I can select investor type


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
      * I pick random job title from given results
      * I pick random firm title from given results
      * I wait for Investor Type page

  Scenario: I can select investor type

      * I select investor type
      * I wait for Your Interests Page
