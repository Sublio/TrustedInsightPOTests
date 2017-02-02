
When(/^I input valid User mail$/) do
  @current_page = page(LoginPage).await(timeout: 60)
  user = CREDENTIALS[:valid_user]                                    
  @current_page.inputUserEmail(user[:mail])

end

And(/^I tap Next button$/) do
	
	touch(@current_page.nextButton)
end


Then(/^I see password input page$/)do
	
	@current_page = page(PasswordPage).await(timeout:60)
end

When(/^I input not registered User mail$/) do
  @current_page = page(LoginPage).await(timeout: 60)
  user = CREDENTIALS[:random_user]                                    
  @current_page.inputUserEmail(user[:mail])

end

Then(/^I see first screen of Sign new user process$/) do
  @current_page = page(NewToTrustedInsightPage).await(timeout: 60) #first page of sign up flow
end