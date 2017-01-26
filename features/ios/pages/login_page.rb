require 'calabash-cucumber/ibase'


#IOS

class LoginPage < Calabash::IBase

  
  def trait

    "button marked:'ACCESS WITH EMAIL'"
    
  end



  def tap_on_access_button

    touch(trait())

  end

end