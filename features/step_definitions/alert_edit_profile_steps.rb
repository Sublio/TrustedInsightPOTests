#Victor Bezrodin

And /^I am on Settings screen and check user name$/ do
@current_page = page(SettingsPage).await(timeout:60)
@name_before = (@current_page.SettingsName)
end

And /^I tap Edit Profile button on Settings screen$/ do
	@current_page = page(SettingsPage)
	touch(@current_page.EditProfileButton)
end
	

And /^I am on Edit profile screen$/ do
	@current_page = page(EditProfilePage).await(timeout:60)
end		

And /^I change my First Name$/ do
	@current_page = page(EditProfilePage)
	touch(@current_page.FirstNameField)
	keyboard_enter_text(" Uncle")
end

And /^I try to leave Edit Profile screen without saving$/ do
	@current_page = page(EditProfilePage)
	touch(@current_page.BackButton)
	 sleep(3)
end	

And /^I see alert with constant text$/ do
	@current_page = page(EditProfilePage)
	alert_title = query(@current_page.TitleOnAlert,"text").first
		if (alert_title.empty?)
			fail("Alert title not found")
		end
	alert_text = query(@current_page.TextOnAlert,"text").first
		if (alert_text.empty?)
			fail("Alert text not found")
		end
	puts("Alert: \n #{alert_title} \n #{alert_text} \n")
end	

And /^I tap Cancel button to return to Edit Profile screen$/ do
	@current_page = page(EditProfilePage)
	touch(@current_page.CancelOnAlert)
end

And /^I check that alert has been dismissed$/ do
	@current_page = page(EditProfilePage)
	alert_title = query(@current_page.TitleOnAlert,"text")
	if (alert_title.empty?)
		puts("Alert has been dismissed")
	else
		fail("Cancel button doesn't work")
	end
end

And /^I tap Continue button on alert to leave Edit Profile without saving$/ do
	@current_page = page(EditProfilePage).await(timeout:60)
	touch(@current_page.ContinueOnAlert)
end

And /^I check that I returned to Settings screen$/ do
	@current_page = page(SettingsPage).await(timeout:60)

end

And /^I check that changes has not been applied$/ do
	@current_page = page(SettingsPage).await(timeout:60)
	sleep(3)
	name_after = (@current_page.SettingsName)
	result = @name_before <=> name_after
	if result == 0
		puts("All good! You return to Settings screen without changes!")
	else
		fail("Something went wrong!!! Name before test and after test are different.")
	end

end
