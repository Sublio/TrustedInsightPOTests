

#TODO - rewrite using android locators


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







