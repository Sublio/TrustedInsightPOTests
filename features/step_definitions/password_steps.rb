When(/^I input untestor user email$/) do
  @current_page = page(LoginPage).await(timeout: 60)
  user = CREDENTIALS[:untestor_user]                                    
  @current_page.inputUserEmail(user[:mail])

end

When(/^I press the "Forgot password?" button$/) do

	@current_page = page(PasswordPage).await(times: 30)
	touch(@current_page.trait)
end


And(/^I press Reset button$/) do

	@current_page = page(PasswordPage).await(times: 30)
	touch(@current_page.confirmButtonOnForgotPasswordConfirmationAlert)
end

Then(/^I am on the password screen$/) do

	@current_page = page(PasswordPage).await(timeout:30)

end