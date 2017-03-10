When(/^I check if Close button clear firm textfield$/) do
  @current_page = page(WhereDoYouWorkPage).await(timeout: 30)
  @current_page.checkIfCleared(@current_page.firmTitleEdit, @current_page.firmTitlesContainer, @current_page.firmTitlesCloseButton)
end

When(/^I check if Close button clear job textfield$/) do
  @current_page = page(WhereDoYouWorkPage).await(timeout: 30)
  @current_page.checkIfCleared(@current_page.jobTitleEdit, @current_page.jobTitlesContainer, @current_page.jobTitlesCloseButton)
end

When(/^I enter random character as job title to get results$/) do

  @current_page = page(WhereDoYouWorkPage).await(timeout: 30)
  enter_text(@current_page.jobTitleEdit, 1.times.map { [*'a'..'x'].sample }.join)
  wait_for_elements_exist(@current_page.jobTitlesContainer)

end

When(/^I pick random job title from given results$/) do

  @current_page = page(WhereDoYouWorkPage).await(timeout: 30)
  @current_page.pickItemFromAutocompleteList(@current_page.jobTitleEdit, @current_page.jobTitlesContainer, @current_page.availElements)
end

When(/^I pick random firm title from given results$/) do

  @current_page = page(WhereDoYouWorkPage).await(timeout: 30)
  @current_page.pickItemFromAutocompleteList(@current_page.firmTitleEdit, @current_page.firmTitlesContainer, @current_page.availElements)

end

When(/^I pick country and make sure that it appears$/) do

  @current_page = page(WhereDoYouWorkPage).await(timeout: 60)
  @current_page.pickCountryFromTheList(@current_page.countryTitleEdit, @current_page.countryElementString, @current_page.countryContainer, 'Belarus', @current_page.countryOkButton, @current_page.NextButton)

end

When(/^I wait for Investor Type page$/) do

  @current_page = page(InvestorTypePage).await(timeout: 60)

end