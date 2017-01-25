require 'calabash-cucumber/ibase'


#IOS

class LoginPage < Calabash::IBase

  
  def trait

    "label index:0"
    
  end



  def tap_on_access_button

    touch(trait())

  end

end