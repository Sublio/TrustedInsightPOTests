require 'calabash-cucumber'


When(/^I add first cell to bookmarks$/) do
  @current_page = page(FeedPage).await(timeout: 60)
  @cellHeaderBefore = @current_page.firstCellHeader
  @current_page.swipeOnFirstCellInRightSide
  sleep(2)
  touch(@current_page.cellBookmarksButton)
end


And(/^I Open Bookmarks tab$/) do
    @current_page=page(BottomNavBarPage).await(timeout:30)
    touch(@current_page.bookmarkTab)
    sleep(2)
end


Then (/^I should see first cell on Bookmark tab with the same description as on feed page$/) do

  @current_page = page(BookmarksPage).await(timeout:20)


  @cellHeaderAfter = @current_page.firstCellHeader

  unless @cellHeaderBefore == @cellHeaderAfter
    fail("Cell has different header on Feed and Bookmark page!")
    puts (@cellHeaderBefore)
    puts (@cellHeaderAfter)
  end


  ######## delete cell from bookmarks after test ####################

  @current_page.swipeOnFirstCellInRightSide #@currentPage == Bookmarks page
  sleep(2)
  touch(@current_page.cellBookmarksButton)

end

