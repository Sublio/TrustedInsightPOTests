require 'calabash-android/abase'

class LoginPage < Calabash::ABase



  def trait

    "* id:'join_email'"

  end

  
  def tap_on_access_button

   touch(trait())

  end 

end