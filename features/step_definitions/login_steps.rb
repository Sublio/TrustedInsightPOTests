Given(/^I am on the first screen$/) do

  @current_page = page(LoginPage).await(timeout: 30)
  @current_page.tap_on_access_button


end