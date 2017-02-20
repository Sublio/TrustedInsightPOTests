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






