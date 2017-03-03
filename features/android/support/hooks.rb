



Before('@shouldLogin') do
  

  

end


After('@shouldLogin') do


end


Before('@shouldLoginAsCherepashkin') do
  
	touch("* id:'join_email'")
	keyboard_enter_text("test1@xttk.ru")
	touch("* id:'join_action_button'") 
	sleep(4)
	keyboard_enter_text("Qwerty123")
	sleep(3)
	touch("* id:'join_action_button'")
	sleep(6)
	touch("* id:'bottomBarItemFive'")
	sleep(1)

end


After('@shouldLoginAsCherepashkin') do

#	touch("* id:'bottomBarItemFive'")
#	sleep(1)
#	if element_exists("ResponsiveScrollView")
#		scroll("ResponsiveScrollView",:down)
#	end
	perform_action('drag', 50, 50, 70, 20, 30)
	touch("* id:'settings_logout'")
	sleep(2)

end