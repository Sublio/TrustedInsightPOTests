Feature: Changing Country
  As an Rosberry Tester
  I want to change Country and save it


  @shouldLoginAsCherepashkin
  Scenario: Change Country
    And I tap Edit Profile button on Settings screen
    And I am on Edit profile screen
    And I change my Country
    And I tap Done button on Edit profile screen
    And I check that I returned to Settings screen