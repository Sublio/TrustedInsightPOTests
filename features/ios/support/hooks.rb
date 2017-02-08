require 'calabash-android'
require 'calabash-cucumber'

=begin
Before('@shouldLogin') do
  
	touch("button marked:'ACCESS WITH EMAIL'")
	keyboard_enter_text("sublio1260@gmail.com")
	touch("* marked:'NEXT'") 
	sleep(4)
	keyboard_enter_text("avatar1260")
	touch("* marked:'LOG IN'")
	sleep(6)

	if element_exists(" marked:'ENABLE NOTIFICATIONS'")

		touch(" marked:'ENABLE NOTIFICATIONS'")
	end


end


After('@shouldLogin') do

	touch("* marked:'Settings'")
	scroll("UITableView", :down)
	sleep(1)
	touch("* marked:'Log out'")
	sleep(2)

end



=end