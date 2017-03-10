And /^I tap Done button on Edit profile screen$/ do
	@current_page = page(EditProfilePage).await(timeout:60)
	touch(@current_page.DoneButton)	
=begin ***Just for test***	
	touch(@current_page.BackButton)
	touch(@current_page.ContinueOnAlert)
=end
end

 And /^I check that user name has been changed$/ do
	@current_page = page(SettingsPage).await(timeout:60)
	sleep(4)
	name_after = (@current_page.SettingsName)
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