#IOS hooks
require_relative '../ios_helpers/i_helpers.rb'
require 'calabash-cucumber'


Before('@shouldLogoutBefore') do

	if element_exists("* marked:'Settings'") 
		wait_for(:timeout => 20) { element_exists("* marked:'Settings'")}
		touch("* marked:'Settings'")
		sleep(3)
		scroll("UITableView", :down)
		wait_for(:timeout => 20) { element_exists("* marked:'Log out'")}
		touch("* marked:'Log out'")
		page(WelcomePage).await(timeout: 60) 
		
	else
		puts ("Can't logout")
	end
end

Before('@shouldLogin') do
  wait_for(:timeout => 60) { element_exists("button marked:'ACCESS WITH EMAIL'")}
	touch("button marked:'ACCESS WITH EMAIL'")
	keyboard_enter_text("sublio1260@gmail.com") #login
	touch("* marked:'NEXT'") 
	wait_for(:timeout => 20) { element_exists("button marked:'Forgot password?'")}
	keyboard_enter_text("avatar1260") #password
	touch("* marked:'LOG IN'")
	
	wait_for_none_animating
	if element_exists(" marked:'ENABLE NOTIFICATIONS'")

		touch("button marked:'ENABLE NOTIFICATIONS'")
	end

	wait_for(:timeout => 20) { element_exists("* marked:'Home'")}

end


After('@shouldLogin') do

	wait_for(:timeout => 20) { element_exists("* marked:'Settings'")}
	touch("* marked:'Settings'")
	sleep(3)
	scroll("UITableView", :down)
	wait_for(:timeout => 20) { element_exists("* marked:'Log out'")}
	touch("* marked:'Log out'")
	page(WelcomePage).await(timeout: 60) 

end

After('@shoudlLogout') do

	wait_for(:timeout => 20) { element_exists("* marked:'Settings'")}
	touch("* marked:'Settings'")
	sleep(3)
	scroll("UITableView", :down)
	wait_for(:timeout => 20) { element_exists("* marked:'Log out'")}
	touch("* marked:'Log out'")
	page(WelcomePage).await(timeout: 60)

end


After('shouldLogoutAfter') do

	wait_for(:timeout => 20) { element_exists("* marked:'Settings'")}
	touch("* marked:'Settings'")
	sleep(3)
	scroll("UITableView", :down)
	wait_for(:timeout => 20) { element_exists("* marked:'Log out'")}
	touch("* marked:'Log out'")
	page(WelcomePage).await(timeout: 60)

end



######################Landing Hooks IOS##############################


#Landing Home


Before('@landingHome') do

  if element_exists("* marked:'Home'")
    touch("* marked:'Home'")
  else

		wait_for(:timeout => 60) { element_exists("button marked:'ACCESS WITH EMAIL'")}
		touch("button marked:'ACCESS WITH EMAIL'")
		keyboard_enter_text("sublio1260@gmail.com") #login
		touch("* marked:'NEXT'")
		sleep(5)
		wait_for(:timeout => 20) { element_exists("button marked:'Forgot password?'")}
		keyboard_enter_text("avatar1260") #password
		touch("* marked:'LOG IN'")

		sleep(5)

		if element_exists(" marked:'ENABLE NOTIFICATIONS'")

			touch("button marked:'ENABLE NOTIFICATIONS'")
		end

    sleep(4)

		wait_for(:timeout => 20) { element_exists("* marked:'Home'")}

  end

end


After ('@landingHome') do

  sleep(2)
	wait_for(:timeout => 20) { element_exists("* marked:'Settings'")}
	touch("* marked:'Settings'")
	sleep(3)
	scroll("UITableView", :down)
	wait_for(:timeout => 20) { element_exists("* marked:'Log out'")}
	touch("* marked:'Log out'")
	page(WelcomePage).await(timeout: 60)

end

#Landing BookmarksTag: @@landingHome



Before('@landingBookmarks') do

	if element_exists("* marked:'Home'")
		touch("* marked:'Home'")
	else

		wait_for(:timeout => 60) { element_exists("button marked:'ACCESS WITH EMAIL'")}
		touch("button marked:'ACCESS WITH EMAIL'")
		keyboard_enter_text("sublio1260@gmail.com") #login
		touch("* marked:'NEXT'")
		sleep(5)
		wait_for(:timeout => 20) { element_exists("button marked:'Forgot password?'")}
		keyboard_enter_text("avatar1260") #password
		touch("* marked:'LOG IN'")

		sleep(5)

		if element_exists(" marked:'ENABLE NOTIFICATIONS'")

			touch("button marked:'ENABLE NOTIFICATIONS'")
		end

		sleep(4)

    touch("* marked:'Bookmarks'")
    sleep(1)

		wait_for(:timeout => 20) { element_exists("* marked:'All bookmarks'")}

	end

end


After('@landingBookmarks') do

	sleep(2)
	wait_for(:timeout => 20) { element_exists("* marked:'Settings'")}
	touch("* marked:'Settings'")
	sleep(3)
	scroll("UITableView", :down)
	wait_for(:timeout => 20) { element_exists("* marked:'Log out'")}
	touch("* marked:'Log out'")
	page(WelcomePage).await(timeout: 60)

end

#Landing Contacts


Before('@landingContacts') do
	if element_exists("* marked:'Contacts'")
		touch("* marked:'Contacts'")
	else

		wait_for(:timeout => 60) { element_exists("button marked:'ACCESS WITH EMAIL'")}
		touch("button marked:'ACCESS WITH EMAIL'")
		keyboard_enter_text("sublio1260@gmail.com") #login
		touch("* marked:'NEXT'")
		wait_for(:timeout => 20) { element_exists("button marked:'Forgot password?'")}
		keyboard_enter_text("avatar1260") #password
		touch("* marked:'LOG IN'")

		wait_for_none_animating

		sleep(2)

		if element_exists(" marked:'ENABLE NOTIFICATIONS'")

			touch("button marked:'ENABLE NOTIFICATIONS'")
		end

		wait_for(:timeout => 20) { element_exists("* marked:'Home'")}
		touch("* marked:'Contacts'")

	end
end

#Landing Notifications

Before('@landingNotifications') do
	if element_exists("* marked:'Notifications'")
		touch("* marked:'Notifications'")
	else

		wait_for(:timeout => 60) { element_exists("button marked:'ACCESS WITH EMAIL'")}
		touch("button marked:'ACCESS WITH EMAIL'")
		keyboard_enter_text("sublio1260@gmail.com") #login
		touch("* marked:'NEXT'")
		wait_for(:timeout => 20) { element_exists("button marked:'Forgot password?'")}
		keyboard_enter_text("avatar1260") #password
		touch("* marked:'LOG IN'")

		wait_for_none_animating

		sleep(2)

		if element_exists(" marked:'ENABLE NOTIFICATIONS'")

			touch("button marked:'ENABLE NOTIFICATIONS'")
		end

		wait_for(:timeout => 20) { element_exists("* marked:'Home'")}
		touch("* marked:'Notifications'")

	end
end

#Landing Settings

Before('@landingSettings') do
	if element_exists("* marked:'Settings'")
		touch("* marked:'Settings'")
	else

		wait_for(:timeout => 60) { element_exists("button marked:'ACCESS WITH EMAIL'")}
		touch("button marked:'ACCESS WITH EMAIL'")
		keyboard_enter_text("sublio1260@gmail.com") #login
		touch("* marked:'NEXT'")
		wait_for(:timeout => 20) { element_exists("button marked:'Forgot password?'")}
		keyboard_enter_text("avatar1260") #password
		touch("* marked:'LOG IN'")

		wait_for_none_animating

		sleep(2)

		if element_exists(" marked:'ENABLE NOTIFICATIONS'")

			touch("button marked:'ENABLE NOTIFICATIONS'")
		end

		wait_for(:timeout => 20) { element_exists("* marked:'Home'")}
		touch("* marked:'Settings'")

	end
end






Before('@shouldLoginAsCherepashkin') do
	findWelcome
	sleep(1)	
	touch("button marked:'ACCESS WITH EMAIL'")
	sleep(3)
	keyboard_enter_text("test1@xttk.ru")
#	enter_text("* id:'join_email_et'", 'test1@xttk.ru')
	touch("* marked:'NEXT'") 
	sleep(4)
	keyboard_enter_text("Qwerty123")
	touch("* marked:'LOG IN'")
	sleep(6)

	if element_exists("* marked:'ENABLE NOTIFICATIONS'")

		touch("* marked:'ENABLE NOTIFICATIONS'")
	end
	sleep(2)
	touch("* marked:'Settings'")

end


After('@shouldLoginAsCherepashkin') do

	sleep(2)
	touch("* marked:'Settings'")
#	scroll("UITableView", :down)
#	sleep(1)
#	touch("* marked:'Log out'")
#	sleep(2)
end

#user = CREDENTIALS[:random_user:]
#mail = user[:mail]

#Return to "Welcome Screen" hook
#Before('@findWelcome') do

#####################################################
#Check Welcome 
#####################################################
def findWelcome
	welcomescreen = query("* marked:'Welcome to Trusted Insight'")
 	if (welcomescreen.empty?)
 		findBottomBar
	else 
		puts("Congrats! \nYou are on Welcome screen.\n Let's run your test!")
	end
end

def findBottomBar
	checkBottomBar = query("UITabBarButton")
	if (checkBottomBar.empty?)
		returnToPreviousScreen
#		findWelcome
	else
		touch("* marked:'Settings'")
		touch("* marked:'Settings'")
		touch("* marked:'Settings'")
		sleep(1)
		scroll("UITableView", :down)
		sleep(1)
		touch("* marked:'Log out'")
		sleep(2)
	end
	findWelcome
end

def returnToPreviousScreen
tapiconTopBack
tapContinue
tapiconTopCancel
tapCancel
arrowOnWizard
skipOnWizard

#	touch("* marked:'iconTopBack'")
#	findBottomBar
findWelcome
end

def tapiconTopBack
iconTopBack = query("* marked:'iconTopBack'")
	if (iconTopBack.empty?)
		puts("Please wait...")
	else
		touch("* marked:'iconTopBack'")
	end

end

def tapiconTopCancel
iconTopCancel = query("* marked:'iconTopCancel'")	
	if (iconTopCancel.empty?)
		puts("Please wait...")
	else
		touch("* marked:'iconTopCancel'")
	end
end

def tapContinue
contunue_button = query("* marked:'Continue'")
	if (contunue_button.empty?)
			puts("Please wait...")
	else
		touch("* marked:'Continue'")
	end
end	

def tapCancel
cancel_button = query("* marked:'Cancel'")
	if (cancel_button.empty?)
		puts("Please wait...")
	else
		touch("* marked:'Cancel'")
	end
end

def arrowOnWizard
arrow_on_wizard = query("* marked:'iconArrowActionBlue'")
	if (arrow_on_wizard.empty?)
			puts("Please wait...")
	else
		touch("* marked:'iconArrowActionBlue'")
	end
end	

def skipOnWizard
skip_on_wizard = query("* marked:'SKIP'")
	if (skip_on_wizard.empty?)
			puts("Please wait...")
	else
		touch("* marked:'SKIP'")
	end
end	

 # Just a hook for findWelcome
Before('@findWelcome') do
welcomescreen = query("* marked:'Welcome to Trusted Insight'")
 	if (welcomescreen.empty?)
 		findBottomBar
	else 
		puts("Congrats! \nYou are on Welcome screen.\n Let's run your test!")
	end
end

Before('@logoutAtAnyCost') do

end


After('@logoutAtAnyCost') do
	if element_exists("* marked:'Welcome to Trusted Insight'")
puts("Welcome to Welcome screen.")
	else 
#	findBottomBar
findWelcome
	end
end
