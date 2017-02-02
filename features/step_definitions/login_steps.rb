
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