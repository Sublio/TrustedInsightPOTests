require 'calabash-cucumber/ibase'


#IOS

class WelcomePage < Calabash::IBase

  
  def trait

    "button marked:'ACCESS WITH EMAIL'"
    
  end

  def ensureYouAreOnWelcomePage

  	trait

  end


  def googleTrait

  	"button marked:'ACCESS WITH GOOGLE"
  end



  def tap_on_access_button

    touch("button index:0")

  end


  def tap_on_google_button

  	touch("button index:1")

  end

  def tap_terms_of_use

  	tap_text_position("* id:'join_terms_t'","Terms of Use")

  end

  def tap_privacy_policy

  	tap_text_position("* id:'join_terms_t'","Privacy Policy")

  end

end