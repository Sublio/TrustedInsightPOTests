require 'calabash-cucumber'
require_relative '../support/global_helpers'


When(/^I add first cell to bookmarks$/) do
  @current_page = page(FeedPage).await(timeout: 60)
  sleep(6) #we need to wait while feed content has been fully loaded
  @cellHeaderBefore = @current_page.firstCellHeader
  @current_page.swipeOnFirstCellInRightSide
  sleep(2)
  touch(@current_page.cellBookmarksButton)
end


And(/^I Open Bookmarks tab$/) do
  sleep(2)
  @current_page=page(FeedPage).await(timeout: 30)
  touch(@current_page.bookmarkTab)
  sleep(2)
end


Then (/^I should see first cell on Bookmark tab with the same description as on feed page$/) do

  @current_page = page(BookmarksPage).await(timeout: 20)


  @cellHeaderAfter = @current_page.firstCellHeader

  unless @cellHeaderBefore.include?(@cellHeaderAfter)
    fail("Cell has different header on Feed and Bookmark page!")
    msg(@cellHeaderBefore)
    msg(@cellHeaderAfter)
  end

  unless (query(@current_page.emptyBookmarksTableLabel).empty?)
    fail("Cell has not been added")
  end


  ######## delete cell from bookmarks after test ####################

  @current_page.swipeOnFirstCellInRightSide #@currentPage == Bookmarks page
  sleep(2)
  touch(@current_page.cellBookmarksButton)

end

When(/^I use cellRecognizer with some cell from feed$/) do

  #@type = cellRecognizer("UITableView",2)
  @type = "Some Type"

end

Then (/^returns me contentType of the selected cell$/) do

  puts @type

end

Then (/^I swipe on first cell$/) do

  @current_page = page(FeedPage).await(timeout: 10)
  sleep(8);
  @current_page.swipeOnFirstCellInRightSide

end

And (/^I tap Share$/) do

  touch(@current_page.cellShareButton)

end


Then (/^I see system shareView$/) do

  @current_page.ensureThereIsASharemenu
  puts("System view has seen")

end



