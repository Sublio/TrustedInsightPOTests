When(/^I tap SKIP button$/) do

  sleep(5)
  touch("* marked:'SKIP'")

end

When(/^I proceed as Fund of Funds$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_partner("Fund of Funds")
  @current_page = page(YourInterestsPage).await(timeout: 30)
  @current_page.tap_back_button

end

When(/^I proceed as Other$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_partner("Other")
  @current_page = page(YourInterestsPage).await(timeout: 30)
  @current_page.tap_back_button

end

When(/^I select type Other$/) do #Need to select from Edit Profile screen

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_partner("Other")

end

When(/^I proceed as Consultant$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_not_limited_partner(@current_page.cell, "Consultant")

end

When(/^I proceed as Registered Investment Adviser$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_not_limited_partner(@current_page.cell, "Registered Investment Adviser (RIA)")

end

When(/^I proceed as General Partner$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_not_limited_partner(@current_page.cell, "General Partner")

end

When(/^I enter Limited Partner$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_partner("Limited Partner")

end

#############

When(/^I proceed as Endowment$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_not_limited_partner(@current_page.cell, "Endowment")

end

When(/^I proceed as Insurance$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_not_limited_partner(@current_page.cell, "Insurance")

end

When(/^I proceed as Corporation$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_not_limited_partner(@current_page.cell, "Corporation")

end

#############

When(/^I proceed as Sovereign Wealth Fund$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_partner("Sovereign Wealth Fund")
  @current_page = page(YourInterestsPage).await(timeout: 30)
  @current_page.tap_back_button

end

When(/^I proceed as Economic Development Agency$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_partner("Economic Development Agency")
  @current_page = page(YourInterestsPage).await(timeout: 30)
  @current_page.tap_back_button

end

When(/^I proceed as Asset Manager$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_partner("Asset Manager")
  @current_page = page(YourInterestsPage).await(timeout: 30)
  @current_page.tap_back_button

end

When(/^I scroll$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.scroll_down
  sleep 1

end

##################


When(/^I proceed as Outsourced CIO$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_partner("Outsourced CIO")
  @current_page = page(YourInterestsPage).await(timeout: 30)
  @current_page.tap_back_button

end

When(/^I proceed as Financial Bank$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_partner("Financial / Bank")
  @current_page = page(YourInterestsPage).await(timeout: 30)
  @current_page.tap_back_button

end

When(/^I proceed as Foundation$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_partner("Foundation")
  @current_page = page(YourInterestsPage).await(timeout: 30)
  @current_page.tap_back_button

end

When(/^I proceed as Pension$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_not_limited_partner(@current_page.cell, "Pension")

end


When(/^I proceed as Family Office$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_not_limited_partner(@current_page.cell, "Family Office")

end

When(/^I proceed as Other in Limited Partner$/) do

  @current_page = page(InvestorTypePage).await(timeout: 30)
  @current_page.proceed_as_partner("Other")
  sleep(2);
  @current_page = page(YourInterestsPage).await(timeout: 30)
end

When(/^I wait for Your Interests Page$/) do
  @current_page = page(YourInterestsPage).await(timeout: 30)
end