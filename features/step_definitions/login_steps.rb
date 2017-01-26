 

Given(/^I am on the welcome screen$/) do

  @current_page = page(WelcomePage).await(timeout: 30)
  @current_page.ensureYouAreOnWelcomePage

end


And(/^I tap on Access wit email button$/) do

  @current_page.tap_on_access_button

end


Then(/^I see Text field for inputting my email$/) do

  @current_page = page(LoginPage).await(timeout: 30)

end