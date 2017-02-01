

When(/^I input valid User mail$/) do
  @current_page = page(LoginPage).await(timeout: 60)
  @current_page.inputUserEmail

end