When(/^I select investor type$/) do
  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.pick_first_cell(@current_page.cell)
  while @current_page.trait do
  	@current_page.select_investor_type(@current_page.cell, @current_page.cellText)
  	sleep(1)
  end
end

When(/^I wait for Your Interests Page$/) do
  @current_page = page(YourInterestsPage).await(timeout: 30)
end