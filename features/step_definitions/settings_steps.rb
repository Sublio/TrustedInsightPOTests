#Victor Bezrodin

Then /^I see title of Settings screen$/ do
  @current_page = page(SettingsPage).await(timeout: 60)
end

And /^I logged in as Fedor Cherepashkin and I can see First and Last names$/ do
  @current_page = page(SettingsPage).await(timeout: 60)
  sleep(1)
#	username = @current_page.SettingsName
# 	puts(@current_page.SettingsName)
  if (@current_page.settingsName).nil?
    fail("First and Last name not found")
  else
    puts(@current_page.settingsName)
  end
end


And /^I logged in as  Assistant Vice President and I can see my Position$/ do
  @current_page = page(SettingsPage)
  if (@current_page.settingsPosition).nil?
    fail("Position not found")
  else
    puts("Position #{@current_page.settingsPosition} appear on Settings screen")
  end
end

And /^I logged in as worker from Ros company and I can see my Company$/ do
  @current_page = page(SettingsPage)
  firmname = @current_page.settingsPosition
  if (firmname.nil?)
    fail("Firm name not found")
  else
    puts("Firm #{firmname} appears on your Settings screen")
  end
end

And /^I see user Avatar$/ do
  @current_page = page(SettingsPage)
  avatar = query(@current_page.settingsAvatar)
  if (avatar.empty?)
    fail("Avatar not found")
  else
    puts("Avatar looks nice")
  end
end

And /^I see logo of Company$/ do
  @current_page = page(SettingsPage)
  firmlogo = query(@current_page.settingsFirmLogo)
  if (firmlogo.empty?)
    fail("Firm logo not found")
  else
    puts("Firm logo has been found")
  end
end

And /^I see Edit profile button$/ do
  @current_page = page(SettingsPage)
  edit_profile = query(@current_page.editProfileButton)
  if (edit_profile.empty?)
    fail("Edit Profile button not found")
  else
    puts("Edit profile button has been detected")
  end
end

And /^I see Manage Interests button$/ do
  @current_page = page(SettingsPage)
  manage_interests = query(@current_page.manageInterestsButton)
  if (manage_interests.empty?)
    fail("Manage Interests button not found")
  else
    puts("Manage Interests  button has been detected")
  end
end

And /^I see Preferences button$/ do
  @current_page = page(SettingsPage)
  preferences = query(@current_page.preferencesButton)
  if (preferences.empty?)
    fail("Preferences button not found")
  else
    puts("Preferences button has been detected")
  end
end

And /^I see Change password button$/ do
  @current_page = page(SettingsPage)
  change_password = query(@current_page.changePasswordButton)
  if (change_password.empty?)
    fail("Change Password not found")
  else
    puts("ChangePassword button has been detected")
  end
end

And /^I see Add phone number button$/ do
  @current_page = page(SettingsPage)
  add_phone_number = query(@current_page.attachPhoneNumberButton)
  if (add_phone_number.empty?)
    fail("Add Phone Number button not found")
  else
    puts("Add Phone Number button has been detected")
  end
end


And /^I want to scroll this page to bottom$/ do
  @current_page.showBottom
end

And /^I see About button$/ do
  sleep(2)
  @current_page = page(SettingsPage)
  about_button = query(@current_page.aboutButton)
  if (about_button.empty?)

    fail("About button not found")
  else
    puts("About button has been detected")
  end
end


And /^I see Terms of Use button$/ do
  @current_page = page(SettingsPage)
  terms_button = query(@current_page.settingsTermsButton)
  if (terms_button.empty?)
    fail("Terms of Use button not found")
  else
    puts("Terms of Use button has been detected")
  end
end


And /^I see Privacy Policy button$/ do
  @current_page = page(SettingsPage)
  privacy_button = query(@current_page.settingsPrivacyPolicyButton)
  if (privacy_button.empty?)
    fail("Privacy Policy button not found")
  else
    puts("Privacy Policy button has been detected")
  end
end


And /^I see Leave Feedback button$/ do
  sleep(2)
  @current_page = page(SettingsPage)
  feedback_button = query(@current_page.feedbackButton)
  if (feedback_button.empty?)
    fail("Leave FeedBack button not found")
  else
    puts("Leave FeedBack  button has been detected")
  end
end


And /^I see Log out button$/ do
  @current_page = page(SettingsPage)
  logout_button = query(@current_page.logOutButton)
  if (logout_button.empty?)
    fail("Log out button not found")
  else
    puts("Log out button has been detected")
  end
end

And /^I see label TrustedInsight at bottom of screen$/ do
  @current_page = page(SettingsPage)
  appversion = query(@current_page.appVersion, "text").first
  if (appversion.empty?)
    fail("AppVersion not found")
  else
    puts("AppVersion #{appversion} appears on your Settings screen")
  end
end