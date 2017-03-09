And /^I change my Last Name$/ do
	@current_page = page(EditProfilePage)
	touch(@current_page.LastNameField)
	keyboard_enter_text(" -Appolonov")
end