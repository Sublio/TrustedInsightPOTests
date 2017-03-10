Feature: As new user I can select job and firm title using autocomplete and select country, also I can apply options such Retired and In transition


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

  Scenario: I can select job and firm title and country

      * I check if Close button clear job textfield
      * I check if Close button clear firm textfield
      * I pick random job title from given results
      * I pick random firm title from given results
      * I pick country and make sure that it appears
      * I wait for Investor Type page