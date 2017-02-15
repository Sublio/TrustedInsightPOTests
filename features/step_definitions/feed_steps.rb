

When(/^I add first cell to bookmarks$/) do
  @current_page = page(FeedPage).await(timeout: 60)
  #touch(@current_page.firstCell)
  swipe :left, :query => @current_page.firstCell, :offset => {:x => 123, :y => 30}, :"swipe-delta" =>{:vertical => {:dx=> 0, :dy=> 250} }
  wait_for_none_animating
  touch(@current_page.cellBookmarksButton)
end


And(/^I Open Bookmarks tab$/) do
    touch(@current_page.bookmarkTab)
end

