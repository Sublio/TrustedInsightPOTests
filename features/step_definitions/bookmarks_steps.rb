#bookmarks steps


When (/^I Open empty Bookmarks page$/) do

  @currentPage =page(BookmarksPage).await(timeout: 20)
end

And (/^I Ensure there is no any bookmarks$/) do

  unless query(@currentPage.firstCell).empty?

    warn("There are some bookmarks")
    #TODO Implement cell cleaner!
    #TODO Implement "Enable notiifcations" handler on first login!!!

  end
end

Then (/^there should be label No bookmarks added yet$/) do

  check_element_exists(@currentPage.emptyBookmarksTableLabel)

end

When (/^I add one bookmark with news content$/) do

  @currentPage =page(BookmarksPage).await(timeout: 20)
  @bottomBar = page(BottomNavBarPage).await(timeout: 20) #two objects are valid in the same runtime

  touch(@bottomBar.feedButton)

  @currentPage=page(FeedPage).await(timeout: 30)

  sleep(5)
  @currentPage.swipeOnFirstCellInRightSide
  touch(@currentPage.cellBookmarksButton)
  sleep(3) #We really need to avoid sleeps everywhere!!!!

end


And (/^I delete all bookmarks$/) do

  @currentPage = page(BookmarksPage).await(timeout: 30)
  sleep(3)
  @currentPage.deleteAllBookmarks
  @bottomBar=page(BottomNavBarPage).await(timeout: 20)
  touch(@bottomBar.feedButton)
  touch(@bottomBar.bookmarkButton)

end


And (/^I tap on Bookmark tab$/) do

  touch(@bottomBar.bookmarkButton)
end

And (/^I Tap on Jobs selector type$/) do

  @currentPage = page(BookmarksPage).await(timeout: 30)
  @currentPage.selectTypeFromTypePicker("Jobs")
end






