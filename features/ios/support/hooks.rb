


Before('@shouldLogin') do
  
	touch("button marked:'ACCESS WITH EMAIL'")
	#user = CREDENTIALS[:valid_user]
	#keyboard_enter_text(user[:mail])
	keyboard_enter_text("sublio1260@gmail.com")
	wait_for(:timeout => 15) { element_exists("* marked:'NEXT'") }
	touch("* marked:'NEXT'")
	#keyboard_enter_text(user[:password])
	keyboard_enter_text("avatar1260")
	wait_for(:timeout => 15) { element_exists("* marked:'LOG IN''") }
	touch("* marked:'LOG IN'")
	sleep(4)

	if element_exists(" marked:'ENABLE NOTIFICATIONS'")

		touch(" marked:'ENABLE NOTIFICATIONS'")
	end


end


After('@shouldLogin') do


end