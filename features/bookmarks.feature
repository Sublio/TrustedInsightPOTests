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
    Scenario: