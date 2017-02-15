
###Android hooks

Before('@shouldLogin') do
  wait_for(:timeout => 20) { element_exists("* text:'ACCESS WITH EMAIL'")}
	touch("* text:'ACCESS WITH EMAIL'")
	enter_text("* id:'join_input_et'","sublio1260@gmail.com") #login
	touch("* id:'join_action_button'") 
	wait_for(:timeout => 20) { element_exists("* text:'Forgot password?'")}
	enter_text("* id:'join_input_et'","avatar1260") #password
	touch("* id:'join_action_button'")
	
	if element_exists("* text:'ENABLE NOTIFICATIONS'")

		touch("* text:'ENABLE NOTIFICATIONS'")
	end

	wait_for(:timeout => 20) { element_exists("* marked:'Home'")}

end


After('@shouldLogin') do

	wait_for(:timeout => 20) { element_exists("* id:'bottomBarItemFive'")}
	touch("* id:'bottomBarItemFive'")
	sleep(3)
	scroll("ResponsiveScrollView", :down)
	wait_for(:timeout => 20) { element_exists("* text:'Log out'")}
	touch("* text:'Log out'")
	page(WelcomePage).await(timeout: 60) 

end



After('@shouldLogout') do

	wait_for(:timeout => 20) { element_exists("* id:'bottomBarItemFive'")}
	touch("* id:'bottomBarItemFive'")
	sleep(3)
	scroll("ResponsiveScrollView", :down)
	wait_for(:timeout => 20) { element_exists("* text:'Log out'")}
	touch("* text:'Log out'")
	page(WelcomePage).await(timeout: 60)

end


Before('@shouldLogoutBefore') do

	sleep(5)
	if element_exists("* id:'bottomBarItemFive'") 
		touch("* id:'bottomBarItemFive'")
		sleep(3)
		scroll("ResponsiveScrollView", :down)
		wait_for(:timeout => 20) { element_exists("* text:'Log out'")}
		touch("* text:'Log out'")
		page(WelcomePage).await(timeout: 60) 
		
	else
		puts ("Can't logout")
	end
end





######################Landing Hooks Android##############################


#Landing Home


Before('@landingHome') do

	if element_exists("* id:'bottomBarItemOne'")
		touch("* id:'bottomBarItemOne'")
	else

		wait_for(:timeout => 20) { element_exists("* text:'ACCESS WITH EMAIL'")}
		touch("* text:'ACCESS WITH EMAIL'")
		enter_text("* id:'join_input_et'","sublio1260@gmail.com") #login
		touch("* id:'join_action_button'")
		wait_for(:timeout => 20) { element_exists("* text:'Forgot password?'")}
		enter_text("* id:'join_input_et'","avatar1260") #password
		touch("* id:'join_action_button'")
		wait_for(:timeout => 20) { element_exists("* marked:'Home'")}
		touch("* id:'bottomBarItemOne'")

	end

end

#Landing Bookmarks


Before('@landingBookmarks') do

	if element_exists("* id:'bottomBarItemTwo'")
		touch("* id:'bottomBarItemTwo'")
	else

		wait_for(:timeout => 20) { element_exists("* text:'ACCESS WITH EMAIL'")}
		touch("* text:'ACCESS WITH EMAIL'")
		enter_text("* id:'join_input_et'","sublio1260@gmail.com") #login
		touch("* id:'join_action_button'")
		wait_for(:timeout => 20) { element_exists("* text:'Forgot password?'")}
		enter_text("* id:'join_input_et'","avatar1260") #password
		touch("* id:'join_action_button'")

		wait_for(:timeout => 20) { element_exists("* marked:'Home'")}
		touch("* id:'bottomBarItemTwo'")

	end

end

#Landing Contacts


Before('@landingContacts') do
	if element_exists("* id:'bottomBarItemThree'")
		touch("* id:'bottomBarItemThree'")
	else

		wait_for(:timeout => 20) { element_exists("* text:'ACCESS WITH EMAIL'")}
		touch("* text:'ACCESS WITH EMAIL'")
		enter_text("* id:'join_input_et'","sublio1260@gmail.com") #login
		touch("* id:'join_action_button'")
		wait_for(:timeout => 20) { element_exists("* text:'Forgot password?'")}
		enter_text("* id:'join_input_et'","avatar1260") #password
		touch("* id:'join_action_button'")

		wait_for(:timeout => 20) { element_exists("* marked:'Home'")}
		touch("* id:'bottomBarItemThree'")

	end
end

#Landing Notifications

Before('@landingNotifications') do
	if element_exists("* id:'bottomBarItemFour'")
		touch("* id:'bottomBarItemFour'")
	else

		wait_for(:timeout => 20) { element_exists("* text:'ACCESS WITH EMAIL'")}
		touch("* text:'ACCESS WITH EMAIL'")
		enter_text("* id:'join_input_et'","sublio1260@gmail.com") #login
		touch("* id:'join_action_button'")
		wait_for(:timeout => 20) { element_exists("* text:'Forgot password?'")}
		enter_text("* id:'join_input_et'","avatar1260") #password
		touch("* id:'join_action_button'")

		wait_for(:timeout => 20) { element_exists("* marked:'Home'")}
		touch("* id:'bottomBarItemFour'")

	end
end

#Landing Settings

Before('@landingSettings') do
	if element_exists("* id:'bottomBarItemFive'")
		touch("* id:'bottomBarItemFive'")
	else

		wait_for(:timeout => 20) { element_exists("* text:'ACCESS WITH EMAIL'")}
		touch("* text:'ACCESS WITH EMAIL'")
		enter_text("* id:'join_input_et'","sublio1260@gmail.com") #login
		touch("* id:'join_action_button'")
		wait_for(:timeout => 20) { element_exists("* text:'Forgot password?'")}
		enter_text("* id:'join_input_et'","avatar1260") #password
		touch("* id:'join_action_button'")

		wait_for(:timeout => 20) { element_exists("* marked:'Home'")}
		touch("* id:'bottomBarItemFive'")

	end
end

