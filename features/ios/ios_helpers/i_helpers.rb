require 'calabash-cucumber'


def tap_text_position(query, text_to_find)
  wait_for_element_exists(query)

  if text_to_find == "Privacy Policy"

  	touch("TTTAttributedLabel", offset:{x:50, y:10})

  elsif text_to_find == "Terms of Use"

  	touch("TTTAttributedLabel", offset:{x:-50, y:10})

  else 

  	puts("Unable to tap on inputted text")
  	
  end

end
