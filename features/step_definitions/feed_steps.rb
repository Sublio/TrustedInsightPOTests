

When(/^I scroll by one cell$/) do
  @current_page = page(FeedPage).await(timeout: 60)                                    
end