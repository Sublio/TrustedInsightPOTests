#IOS hooks


Before('@shouldLogin') do
  	wait_for(:timeout => 20) { element_exists("button marked:'ACCESS WITH EMAIL'")}
	touch("button marked:'ACCESS WITH EMAIL'")
	enter_text("TITextField","sublio1260@gmail.com") #login
	touch("* marked:'NEXT'") 
	wait_for(:timeout => 20) { element_exists("button marked:'Forgot password?'")}
	enter_text("TITextField","avatar1260") #password
	touch("* marked:'LOG IN'")
	
	wait_for_none_animating()
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
	scroll("UITableView", :down)
	wait_for(:timeout => 20) { element_exists("* marked:'Log out'")}
	touch("* marked:'Log out'")

end







