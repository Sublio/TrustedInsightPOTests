require 'calabash-cucumber'
require_relative '../support/global_helpers'



When(/^I add first cell to bookmarks$/) do
  @current_page = page(FeedPage).await(timeout: 60)
  @cellHeaderBefore = @current_page.firstCellHeader
  @current_page.swipeOnFirstCellInRightSide
  sleep(2)
  touch(@current_page.cellBookmarksButton)
end


And(/^I Open Bookmarks tab$/) do
    sleep(2)
    @current_page=page(FeedPage).await(timeout:30)
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

When(/^I use cellRecognizer with some cell from feed$/) do

  @type = cellRecognizer("UITableView",2)


end

Then (/^returns me contentType of the selected cell$/) do

  puts @type

end


