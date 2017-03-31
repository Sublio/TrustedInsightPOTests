require 'calabash-android/calabash_steps'
require_relative '../support/global_helpers.rb'


When(/^I input untestor user email$/) do
  @current_page = page(LoginPage).await(timeout: 60)
  user = CREDENTIALS[:untestor_user]
  @current_page.inputUserEmail(user[:mail])

end


Then(/^I wait for two seconds$/) do

  sleep(4)

end

When(/^I tap the Forgot password\? button$/) do

  sleep(4)
  @current_page = page(PasswordPage).await(times: 30)
  touch(@current_page.trait)
end


And(/^I press Reset button$/) do

  @current_page = page(PasswordPage).await(times: 30)
  touch(@current_page.confirmButtonOnForgotPasswordConfirmationAlert)
end

Then(/^I am on the password screen$/) do

  @current_page = page(PasswordPage).await(timeout: 30)

end

Then(/^I should receive mail for reseting password$/) do

  sleep(5) #wait for mail coming up
  mailChecker("untestor@gmail.com", "untestor1260")

end