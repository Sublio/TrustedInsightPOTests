require 'calabash-android/abase'

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

end