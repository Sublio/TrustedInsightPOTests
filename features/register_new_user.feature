Feature: Sign In experience
  I should be able to Sign In in app with appropriate email


  Background:

  	  * I am on the welcome screen
  	  * I tap on Access wit email button
  	  * I see Text field for inputting my email
      * I input not registered User mail
      * I tap Next button
      * I see first screen of Sign new user flow

  Scenario: On New to Trusted Insight? screen I can input invalid data and receive 

      * I input incorrect first name 
      * I input incorrect last name
      * I input correct password
      * I tap on "SIGN UP" button
      * I wait for invalid name alert to appear
      * I clear first and last name and password
      * I input correct first name 
      * I input correct last name 
      * I input incorrect password
      * I tap on "SIGN UP" button
      * I wait for wrong password alert to appear

  Scenario: On "New to Trusted Insight?" screen I can input valid data and proceed
      * I input correct first name
      * I input correct last name 
      * I input correct password
      * I can make my password visible or hidden
      * I tap on "SIGN UP" button
      * I tap on "SIGN UP" button and wait for Your Background