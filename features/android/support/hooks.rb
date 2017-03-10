
###Android hooks

Before('@shouldLogin') do
  wait_for(:timeout => 20) { element_exists("* text:'ACCESS WITH EMAIL'")}
	touch("* text:'ACCESS WITH EMAIL'")
	enter_text("* id:'join_input_et'","sublio1260@gmail.com") #login
  sleep(1)
	touch("* id:'join_action_button'") 
	wait_for(:timeout => 20) { element_exists("* text:'Forgot password?'")}
	enter_text("* id:'join_input_et'","avatar1260") #password
  sleep(1)
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





######################Landing Hooks Android#############################


#Landing Home


Before('@landingHome') do

	if element_exists("* id:'bottomBarItemOne'")
		touch("* id:'bottomBarItemOne'")
	else

		wait_for(:timeout => 20) { element_exists("* text:'ACCESS WITH EMAIL'")}
		touch("* text:'ACCESS WITH EMAIL'")
		enter_text("* id:'join_input_et'","sublio1260@gmail.com") #login
    sleep(1)
		touch("* id:'join_action_button'")
		wait_for(:timeout => 20) { element_exists("* text:'Forgot password?'")}
		enter_text("* id:'join_input_et'","avatar1260") #password
    sleep(1)
		touch("* id:'join_action_button'")
		wait_for(:timeout => 20) { element_exists("* marked:'Home'")}
		touch("* id:'bottomBarItemOne'")

	end

end


After('@landingHome') do

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

#Landing Bookmarks


Before('@landingBookmarks') do

	if element_exists("* id:'bottomBarItemTwo'")
		touch("* id:'bottomBarItemTwo'")
	else

		wait_for(:timeout => 20) { element_exists("* text:'ACCESS WITH EMAIL'")}
		touch("* text:'ACCESS WITH EMAIL'")
		enter_text("* id:'join_input_et'","sublio1260@gmail.com") #login
    sleep(1)
		touch("* id:'join_action_button'")
		wait_for(:timeout => 20) { element_exists("* text:'Forgot password?'")}
		enter_text("* id:'join_input_et'","avatar1260") #password
    sleep(1)
		touch("* id:'join_action_button'")

		wait_for(:timeout => 20) { element_exists("* marked:'Home'")}
		touch("* id:'bottomBarItemTwo'")

	end

end


After('@landingBookmarks') do

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

#Landing Contacts


Before('@landingContacts') do
	if element_exists("* id:'bottomBarItemThree'")
		touch("* id:'bottomBarItemThree'")
	else

		wait_for(:timeout => 20) { element_exists("* text:'ACCESS WITH EMAIL'")}
		touch("* text:'ACCESS WITH EMAIL'")
		enter_text("* id:'join_input_et'","sublio1260@gmail.com") #login
    sleep(1)
		touch("* id:'join_action_button'")
		wait_for(:timeout => 20) { element_exists("* text:'Forgot password?'")}
		enter_text("* id:'join_input_et'","avatar1260") #password
    sleep(1)
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
    sleep(1)
		touch("* id:'join_action_button'")
		wait_for(:timeout => 20) { element_exists("* text:'Forgot password?'")}
		enter_text("* id:'join_input_et'","avatar1260") #password
    sleep(1)
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
    sleep(1)
		touch("* id:'join_action_button'")
		wait_for(:timeout => 20) { element_exists("* text:'Forgot password?'")}
		enter_text("* id:'join_input_et'","avatar1260") #password
    sleep(1)
		touch("* id:'join_action_button'")

		wait_for(:timeout => 20) { element_exists("* marked:'Home'")}
		touch("* id:'bottomBarItemFive'")

	end
end

#Login and go to Settings
Before('@shouldLoginAsCherepashkin') do
findWelcome
=begin  #old login
	touch("* id:'join_email'")
	keyboard_enter_text("test1@xttk.ru")
	touch("* id:'join_action_button'") 
=end
		wait_for(:timeout => 20) { element_exists("* text:'ACCESS WITH EMAIL'")}
		touch("* text:'ACCESS WITH EMAIL'")
		enter_text("* id:'join_input_et'","test1@xttk.ru") #login
sleep(1)
=begin #old password
	keyboard_enter_text("Qwerty123")
	perform_action('drag', 50, 50, 70, 20, 30)
=end
		touch("* id:'join_action_button'")
		wait_for(:timeout => 20) { element_exists("* text:'Forgot password?'")}
		enter_text("* id:'join_input_et'","Qwerty123")
		hide_soft_keyboard
#		perform_action('drag', 50, 50, 70, 20, 30) #password
sleep(1)
		touch("* id:'join_action_button'")
sleep(1)
		wait_for(:timeout => 20) { element_exists("* marked:'Home'")}
		touch("* id:'bottomBarItemFive'")
sleep(2)

end


After('@shouldLoginAsCherepashkin') do

#	touch("* id:'bottomBarItemFive'")
#	sleep(1)
#	if element_exists("ResponsiveScrollView")
#		scroll("ResponsiveScrollView",:down)
#	end
findWelcome 
#	perform_action('drag', 50, 50, 70, 20, 30)
#	touch("* id:'settings_logout'")
#	sleep(2)

end

#Return to "Welcome Screen" hook
def findWelcome
	if element_exists("* id:'join_welcome'")
		puts("Welcome to Welcome screen.")
	else 
		findBottomBar
	end
end

def findBottomBar
	checkBottomBar = query("BottomBar")
	if (checkBottomBar.empty?)
		returnToPreviousScreen
	else
		findSettingsButton
	end
	findWelcome
end

def findSettingsButton
settings_button = query("* id:'bottomBarItemFive'") 
	if (settings_button.empty?)
		perform_action('drag', 50, 50, 20, 70, 30)
	else
		touch("* id:'bottomBarItemFive'")
		sleep(1)
		perform_action('drag', 50, 50, 70, 20, 30)
		touch("* id:'settings_logout'")
		sleep(3)
	end
end

def returnToPreviousScreen
tapiconTopBack
tap_password_back
tapContinue
tap_email_back
tapCancel
tapLevelOnWizard
skipOnWizard
tapBackOnSearch

findWelcome
end

def tapiconTopBack
iconTopBack = query("* marked:'Navigate up'")
	if (iconTopBack.empty?)
		do_nothing
	else
		touch("* marked:'Navigate up'")
	end

end

def tap_email_back
join_email_back = query("* marked:'join_email_back'")
	if (join_email_back.empty?)
		do_nothing
	else
		touch("* marked:'join_email_back'")
	end

end

def tap_password_back
join_password_back = query("* marked:'join_password_back'")
	if (join_password_back.empty?)
		do_nothing
	else
		touch("* marked:'join_password_back'")
	end

end

def tapCancel
cancel_button = query("* marked:'Cancel'")
	if (cancel_button.empty?)
		do_nothing
	else
		touch("* marked:'Cancel'")
	end
end

def tapLevelOnWizard
level_container = query("* id:'level_container'")
	if (level_container.empty?)
		do_nothing
	else
		touch("* id:'level_container'")
	end
end	

def skipOnWizard
skip_on_wizard = query("* marked:'SKIP'")
	if (skip_on_wizard.empty?)
		do_nothing
	else
		touch("* marked:'SKIP'")
	end
end	

def tapContinue
contunue_button = query("* marked:'Continue'")
	if (contunue_button.empty?)
		do_nothing
	else
		touch("* marked:'Continue'")
	end
end	

def tapBackOnSearch
back_from_search = query("* id:'action_up_btn'")
	if (back_from_search.empty?)
		do_nothing
	else
		touch("* id:'action_up_btn'")
	end
end
=begin #How to find bottombar
def dragToFindBottombar
title_of_screen = query("TextView","text").first
search_on_screen = query("* id:'op_search'","contentDescription").first
puts title_of_screen
	if title_of_screen == "Settings" || title_of_screen == "Notifications" || title_of_screen == "Bookmarks" || title_of_screen == "Contacts" || search_on_screen == "Search"
		perform_action('drag', 50, 50, 20, 70, 30)
	else
		do_nothing
	end
end
=end
def do_nothing
    # do nothing
end	

 # Just a hook for findWelcome
Before('@findWelcome') do
	if element_exists("* id:'join_welcome'")
puts("Welcome to Welcome screen.")
	else 
	findBottomBar
	end
end


    def HideKeyboard
            hide_soft_keyboard
    end
