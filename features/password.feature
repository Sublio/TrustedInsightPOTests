Feature: Password inputing experience
  As a user I want a helpful and simple way to access to my TrustedInsight 
  Account using password feature.


  Background:

  	 Given I am on the welcome screen
  	 And I tap on Access wit email button
  	 Then I input untestor user email
     And I tap Next button
     Then I am on the password screen
    
    
  Scenario: Forgot Password feature
	  When I press the "Forgot password?" button
	  Then I wait for 2 seconds
	  And I press Reset button
	  Then I should see "To reset your password, visit the link sent to your email"
	  And I should receive mail for reseting password