 

Given(/^I am on the welcome screen$/) do

  @current_page = page(WelcomePage).await(timeout: 60)
  @current_page.ensureYouAreOnWelcomePage

end


And(/^I tap on Access wit email button$/) do

  @current_page.tap_on_access_button

end


Then(/^I see Text field for inputting my email$/) do

  @current_page = page(LoginPage).await(timeout: 30)

end


Then(/^I tap on Terms of Use link$/) do

  @current_page.tap_terms_of_use
  sleep(10)

end