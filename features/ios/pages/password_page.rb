require 'calabash-cucumber/ibase'


#IOS

class PasswordPage < Calabash::IBase

  def trait

    "* id:'join_input_et'"   #this is a forgotPassword button

  end


end