Feature: Initial experience
  As a user I want a helpful and simple initial
  experience with the app. I should be able to get help
  and login to an existing Trusted insight account.


  @shouldLogoutBefore
  Scenario: Tapping on Access with email button

  	Given I am on the welcome screen
  	And I tap on Access wit email button
  	Then I see Text field for inputting my email

 
  Scenario: Tapping on Terms of Use will open WebView with terms of using
    Given I am on the welcome screen
    When I tap on Terms of Use link
    Then I see WebView with terms of using  

  
  Scenario: Tapping on Privacy Policy will open WebView with Privacy Policy
    Given I am on the welcome screen
    When I tap on Privacy Policy link
    Then I see WebView with privacy policy 
      

