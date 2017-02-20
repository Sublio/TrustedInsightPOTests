Feature: Feed Feature. 
	     As a Trusted Insight user i want to receive 
	     some usefull info about investing world 
	     and some usefull stuff around



	@landingHome
	Scenario: Can add first cell from feed to bookmark
		Then I add first cell to bookmarks
		And I Open Bookmarks tab
		Then I should see first cell on Bookmark tab with the same description as on feed page