Feature: Login experience
  As a user I want a helpful and simple initial
  experience with the app. I should be able to be logged with appropriate email
  and using all features that TrustedInsight service provided


  Background:

  	Given I am on the welcome screen
  	And I tap on Access wit email button
  	Then I see Text field for inputting my email
    
  Scenario: Input Email and proceed to Input Password screen
      When I input valid User mail
      And I tap Next button
      Then I see password input page

  Scenario: Input not registered mail proceed to Sign Up screen
      When I input not registered User mail
      And I tap Next button
      Then I see first screen of Sign new user flow