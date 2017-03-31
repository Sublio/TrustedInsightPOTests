Feature: Changing Title Position
  As an Rosberry Tester
  I want to change Title Position and save it


  @shouldLoginAsCherepashkin
  Scenario: Change Title Position name
    And I am on Settings screen and check Title Position
    And I tap Edit Profile button on Settings screen
    And I am on Edit profile screen
    And I change my Title Position
    And I tap Done button on Edit profile screen
    And I check that I returned to Settings screen
    And I check that Title Position has been changed
    And I tap Edit Profile button on Settings screen
    And I am on Edit profile screen
    And I return Title Position back
    And I tap Done button on Edit profile screen
    And I check that I returned to Settings screen