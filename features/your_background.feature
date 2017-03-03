Feature: Select background experience


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
  
  @shouldLogoutBefore
  Scenario: I can select Student as my background and proceed as student

      * I proceed as student

  @shouldLogoutBefore
  Scenario: I can select everything except Student and proceed as worker

      * I proceed as worker

  
