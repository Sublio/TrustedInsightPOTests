require 'calabash-android/abase'

class LoginPage < Calabash::ABase



  def trait

    "android.widget.RelativeLayout id:'join_email'"

  end

  
  def tap_on_access_button

   touch(query("android.widget.RelativeLayout id:'join_email'"))

  end 

end