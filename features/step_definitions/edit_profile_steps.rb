#Victor Bezrodin 10.03.2017
#Edit Profile Steps

And /^I am on Settings screen and check user name$/ do
  @current_page = page(SettingsPage).await(timeout:60)
  sleep(2)
  @name_before = (@current_page.settingsName)
end

And /^I tap Edit Profile button on Settings screen$/ do
  @current_page = page(SettingsPage)
  sleep(2)
  touch(@current_page.editProfileButton)
end


And /^I am on Edit profile screen$/ do
  @current_page = page(EditProfilePage).await(timeout:60)
end

And /^I change my First Name$/ do
  @current_page = page(EditProfilePage)
  touch(@current_page.firstNameField)
  keyboard_enter_text(" Uncle")
end

And /^I try to leave Edit Profile screen without saving$/ do
  @current_page = page(EditProfilePage)
  sleep(1)
  touch(@current_page.backButton)
  sleep(3)
end

And /^I see alert with constant text$/ do
  @current_page = page(EditProfilePage)
  alert_title = @current_page.titleOnAlert
  if (alert_title.empty?)
    fail("Alert title not found")
  end
  alert_text = @current_page.textOnAlert
  if (alert_text.empty?)
    fail("Alert text not found")
  end
  puts("Alert: \n #{alert_title} \n #{alert_text} \n")
end

And /^I tap Cancel button to return to Edit Profile screen$/ do
  @current_page = page(EditProfilePage)
  touch(@current_page.cancelOnAlert)
  sleep(2)
end

And /^I tap Continue button on alert to leave Edit Profile without saving$/ do
  sleep(2)
  @current_page = page(EditProfilePage)
  touch(@current_page.continueOnAlert)
end

And /^I check that alert has been dismissed$/ do
  @current_page = page(EditProfilePage)
  alert_title = @current_page.titleOnAlert
  sleep(2)
  if (alert_title.nil?)
    puts("Alert has been dismissed")
  else
    fail("Cancel button doesn't work")
  end
end



And /^I check that I returned to Settings screen$/ do
  @current_page = page(SettingsPage).await(timeout:60)

end

And /^I check that changes has not been applied$/ do
  @current_page = page(SettingsPage).await(timeout:60)
  sleep(3)
  name_after = (@current_page.settingsName)
  result = @name_before <=> name_after
  if result == 0
    puts("All good! You return to Settings screen without changes!")
  else
    fail("Something went wrong!!! Name before test and after test are different.")
  end

end

################################CHANGE FIRST NAME
And /^I tap Done button on Edit profile screen$/ do
  @current_page = page(EditProfilePage).await(timeout:60)
  touch(@current_page.doneButton)
=begin ***Just for test***
	touch(@current_page.BackButton)
	touch(@current_page.ContinueOnAlert)
=end
end

And /^I check that user name has been changed$/ do
  @current_page = page(SettingsPage).await(timeout:60)
  sleep(4)
  name_after = (@current_page.settingsName)
#	puts name_after
  result = @name_before <=> name_after
#	puts @name_before
#	puts result
  if result == 0
    fail("Something went wrong!!! Name before test and after are the same")
  else
    puts("All good! user name has been changed!")
  end

end

################################CHANGE LAST NAME
And /^I change my Last Name$/ do
  @current_page = page(EditProfilePage)
  touch(@current_page.lastNameField)
  keyboard_enter_text("idze")
end

################################CHANGE TITLE POSITION
And /^I am on Settings screen and check Title Position$/ do
  @current_page = page(SettingsPage).await(timeout:60)
  sleep(2)
  @position_before = (@current_page.settingsPosition)
  puts("User position is #{@position_before}.")
end


And /^I change my Title Position$/ do
  @current_page = page(EditProfilePage)
  @current_page.showBottom
  sleep(2)
  @current_page.clearTextInPosition
#	hide_soft_keyboard
#	sleep(1)
#	touch(@current_page.titlePositionField)
  keyboard_enter_text(@current_page.randomTitlePosition)
  @current_page.hideKeyboard
  sleep(1)
end

And /^I check that Title Position has been changed$/ do
  @current_page = page(SettingsPage).await(timeout:60)
  sleep(3)
  position_after = (@current_page.settingsPosition)
  puts("Compare #{@position_before} and #{position_after}")
  result = @title_before<=> position_after
  if result == 0
    fail("Something went wrong!!! Position before test and after are the same")
  else
    puts("All good! Position has been changed!")
  end

end

And /^I return Title Position back$/ do
  @current_page = page(EditProfilePage)
  @current_page.showBottom
  sleep(2)
  if (@position_before.to_s.empty?)
    #@current_page.clearTextInPosition
    touch(@current_page.titlePositionField)
    keyboard_enter_text(@current_page.randomTitlePosition)
    @current_page.hideKeyboard
    sleep(1)
  else
    @current_page.clearTextInPosition
    #hide_soft_keyboard
    #sleep(1)
    #touch(@current_page.titlePositionField)
    keyboard_enter_text("#{@position_before}")
    sleep(2)
    @current_page.hideKeyboard
    sleep(1)
  end
end

################################CHANGE COMPANY
And /^I am on Settings screen and check Company name$/ do
  @current_page = page(SettingsPage).await(timeout:60)
  @company_before = (@current_page.settingsFirmName)
  puts @company_before
end


And /^I change my Company Name$/ do
  @current_page = page(EditProfilePage)
  touch(@current_page.companyField)
  keyboard_enter_text("berry")
end

And /^I check that Company name has been changed$/ do
  @current_page = page(SettingsPage).await(timeout:60)
  sleep(3)
  company_after = (@current_page.settingsFirmName)
  puts company_after
  result = @company_before <=> company_after
  if result == 0
    fail("Something went wrong!!! Company before test and after are the same")
  else
    puts("All good! Company has been changed!")
  end

end

And /^I return Company name back$/ do
  @current_page = page(EditProfilePage)
  @current_page.clearTextInCompany
#	touch(@current_page.companyField)
  keyboard_enter_text("#{@company_before}")
end

##################Change Country
And /^I change my Country$/ do
  @current_page = page(EditProfilePage)
  sleep(1)
  @current_page.pickCountryFromTheList(@current_page.countryField, @current_page.countryContainer, @current_page.countryItself, @current_page.countryOkButton, @current_page.showBottom)

end


And /^I tap Back button to return to Settings screen$/ do
  @current_page = page(EditProfilePage)
  @current_page.hideKeyboard
  sleep(1)
  touch(@current_page.backButton)
  sleep(3)
end

###################Change Bio
And /^I remove info from Bio filed$/ do
  @current_page = page(EditProfilePage)
  @current_page.showBottom
  sleep(1)
  @current_page.clearTextInBio
  sleep(1)
  @current_page.hideKeyboard
end


And(/^I input random phrase in Bio field$/) do
  @current_page = page(EditProfilePage).await(timeout: 60)
  @current_page.showBottom
  sleep(1)
  #touch(@current_page.bioField)
  @current_page.bioField
  user = CREDENTIALS[:strange_user]
  @current_page.inputUserBio(user[:bio])
end

##################Mandatory
And /^I delete my First name from First name field$/ do
  @current_page = page(EditProfilePage)
  #touch(@current_page.FirstNameField)
  @current_page.clearTextInFirstName
  sleep(1)
  @current_page.hideKeyboard
end

And /^I delete my Last name from Last name field$/ do
  @current_page = page(EditProfilePage)
  @current_page.clearTextInLastName
  sleep(1)
  @current_page.hideKeyboard
end

And /^I delete my Company from Company field$/ do
  @current_page = page(EditProfilePage)
  @current_page.clearTextInCompany
  sleep(1)
  @current_page.hideKeyboard
end

And /^I check that alert about mandatory field appears$/ do
  @current_page = page(EditProfilePage)
  @current_page.alertAboutMandatoryField
end

And /^I check that alert about mandatory field disappears$/ do
  @current_page = page(EditProfilePage)
  @current_page.noAlertAboutMandatoryField
end
###Select INVESTOR TYPE
And /^I tap Skip button on Investor type screen on wizard$/ do
  @current_page = page(InvestorTypePage).await(timeout: 60)
  touch(@current_page.skipOnWizard)
  sleep(2)
end

And /^I tap Skip button on What are you interest screen$/ do
  @current_page = page(WhatAreYourInterests).await(timeout: 60)
  touch(@current_page.skipOnWizard)
  sleep(2)
end

And /^I tap Skip button on Complete your profie screen$/ do
  @current_page = page(CompleteYourProfile).await(timeout: 60)
  touch(@current_page.skipOnWizard)
  sleep(2)
end

And /^I tap Settings button on bottombar$/ do
  @current_page = page(FeedPage).await(timeout: 60)
  touch(@current_page.settingsTab)
  sleep(2)
end

And /^I scroll down on Edit profile screen$/ do
  @current_page = page(EditProfilePage).await(timeout: 60)
  2.times do @current_page.showBottom
  end
end

And /^I tap Investor Type field$/ do
  @current_page = page(EditProfilePage).await(timeout: 60)
  touch(@current_page.investorTypeField)
end

And /^I want to find Welcome screen$/ do
  findWelcome
end