Feature: As new user I can select avatar image and enter short bio


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
    * I tap SKIP button

  @shouldLogout
  Scenario: I can select photo from gallery and type bio

    * I select avatar from gallery
    * I enter short bio
    * I touch Done button