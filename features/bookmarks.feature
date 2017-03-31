Feature: Bookmark Feature.
  As a Trusted Insight user i want to save info that interests me
  using bookmarks page and see whenever i want.
  Also i want to manage and sort my bookmarks by content-type.


  @landingBookmarks
  Scenario: There is a placeholder when no any bookmarks saved

    When I Open empty Bookmarks page
    And I Ensure there is no any bookmarks
    Then there should be label No bookmarks added yet


  @landingBookmarks
  Scenario: Can arrange my bookmarks by content-type

    When I add one bookmark with news content
    And I tap on Bookmark tab
    And I Tap on Jobs selector type
    Then I Ensure there is no any bookmarks
    And there should be label No bookmarks added yet


  @landingBookmarks
  Scenario: Delete all bookmarks from previous scenario

    When I delete all bookmarks
    Then there should be label No bookmarks added yet