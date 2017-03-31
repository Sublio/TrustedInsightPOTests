Then /^I input correct first name$/ do

  @current_page = page(NewToTrustedInsightPage).await(timeout: 60)
  user = CREDENTIALS[:random_user]
  @current_page.inputFirstName(user[:firstname])

end

Then /^I input correct last name$/ do

  @current_page = page(NewToTrustedInsightPage).await(timeout: 60)
  user = CREDENTIALS[:random_user]
  @current_page.inputLastName(user[:lastname])

end

Then /^I input correct password$/ do

  @current_page = page(NewToTrustedInsightPage).await(timeout: 60)
  user = CREDENTIALS[:random_user]
  @current_page.inputPassword(user[:password])

end

Then /^I input incorrect first name$/ do

  @current_page = page(NewToTrustedInsightPage).await(timeout: 60)
  user = CREDENTIALS[:invalid_user]
  @current_page.inputFirstName(user[:firstname])

end

Then /^I input incorrect last name$/ do

  @current_page = page(NewToTrustedInsightPage).await(timeout: 60)
  user = CREDENTIALS[:invalid_user]
  @current_page.inputLastName(user[:lastname])
  touch(@current_page.signUpButton)

end

Then /^I input incorrect password$/ do

  @current_page = page(NewToTrustedInsightPage).await(timeout: 60)
  user = CREDENTIALS[:invalid_user]
  @current_page.inputPassword(user[:password])
  touch(@current_page.signUpButton)

end

Then /^I wait for invalid name alert to appear$/ do

  @current_page = page(NewToTrustedInsightPage).await(timeout: 60)
  @current_page.invalidFirstLastNameSnack

end

Then /^I wait for wrong password alert to appear$/ do

  @current_page = page(NewToTrustedInsightPage).await(timeout: 60)
  @current_page.invalidPasswordAlert
  @current_page.okButton

end

Then /^I clear first and last name and password$/ do

  @current_page = page(NewToTrustedInsightPage).await(timeout: 60)
  @current_page.clearFirstName
  @current_page.clearLastName
  @current_page.clearPasswd


end

Then /^I can make my password visible or hidden$/ do

  @current_page = page(NewToTrustedInsightPage).await(timeout: 60)
  @current_page.passwordVisibleOrHidden(@current_page.passwd, @current_page.showPasswordButton)

end

Then /^I tap on "SIGN UP" button$/ do

  @current_page = page(NewToTrustedInsightPage).await(timeout: 60)
  touch(@current_page.signUpButton)

end

Then /^I tap on "SIGN UP" button and wait for Your Background$/ do

  @current_page = page(YourBackgroundPage).await(timeout: 60)

end

