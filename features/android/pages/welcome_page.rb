require 'calabash-android/abase'
require_relative '../android_helpers/a_helpers.rb'


#Android

class WelcomePage < Calabash::ABase


  def trait

    "* id:'join_email'"

  end


  def ensureYouAreOnWelcomePage

  	trait

  end

  def googleButton

  	"* id:'join_google'"
  end	

  
  def tap_on_access_button

   touch(trait())

  end 


  def tap_on_google_button

  	touch(googleButton())
  end

  def tap_terms_of_use

  	tap_text_position("* id:'join_terms_t'","Terms of Use")

  end

  def tap_privacy_policy

  	tap_text_position("* id:'join_terms_t'","Privacy Policy")

  end


end