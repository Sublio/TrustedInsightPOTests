

When(/^I add first cell to bookmarks$/) do
  @current_page = page(FeedPage).await(timeout: 60)
  @cellHeaderBefore = @current_page.firstCellHeader
  swipe :left, :query => @current_page.firstCell, :offset => {:x => 123, :y => 30}, :"swipe-delta" =>{:vertical => {:dx=> 0, :dy=> 250} }
  wait_for_none_animating
  touch(@current_page.cellBookmarksButton)
end


And(/^I Open Bookmarks tab$/) do
    touch(@current_page.bookmarkTab)
    wait_for_none_animating
end


Then (/^I should see first cell on Bookmark tab with the same description as on feed page$/) do

  @current_page = page(BookmarksPage).await(timeout:20)

  @cellHeaderAfter = @current_page.firstCellHeader

  unless @cellHeaderBefore == @cellHeaderAfter
    fail("Cell has differnt header on Feed and Bookmark page!")
  end


  ######## delete cell from bookmarks after test ####################

  swipe :left, :query => @current_page.firstCell, :offset => {:x => 123, :y => 30}, :"swipe-delta" =>{:vertical => {:dx=> 0, :dy=> 250} }
  wait_for_none_animating
  touch(@current_page.cellBookmarksButton)

end

