

When(/^I add first cell to bookmarks$/) do
  @current_page = page(FeedPage).await(timeout: 60)                                    
end