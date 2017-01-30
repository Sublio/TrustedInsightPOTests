require 'calabash-android/abase'
require_relative '../../helpers/helpers.rb'


#Android

class WelcomePage < Calabash::ABase


  def trait

    "* id:'join_email'"

  end


  def ensureYouAreOnWelcomePage

  	trait

  end

  def googleTrait

  	"* id:'join_google'"
  end	

  
  def tap_on_access_button

   touch(trait())

  end 


  def tap_on_google_button

  	touch(googleTrait())
  end

  def tap_terms_of_use

  	tap_text_position("* id:'join_terms_t'","Terms of Use")

  end

  def tap_privacy_policy

  	tap_text_position("* id:'join_terms_t'","Privacy Policy")

  end

  def tap_text_position(query, text_to_find)
    wait_for_element_exists(query)

    text = query(query).first['text']
    index = text.index(text_to_find) + text_to_find.length/2
    hor = query(query, :getLayout, getPrimaryHorizontal: index).first.to_i
    line = query(query, :getLayout, getLineForOffset: index).first
    ver = query(query, :getLayout, getLineBaseline: line).first.to_i

    touch(query, x: 0, y: 0, offset: {x: hor, y: ver})
  end

end