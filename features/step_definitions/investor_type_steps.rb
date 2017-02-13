When(/^I select investor type$/) do
  @current_page = page(InvestorType).await(timeout: 30)
  @current_page.select_investor_type(@current_page.cell, @current_page.text)
end

When(/^I wait for Your Interests Page$/) do
  @current_page = page(YourInterestsPage).await(timeout: 30)
  @current_page.select_investor_type(@current_page.cell, @current_page.text)
end