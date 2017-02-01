require 'calabash-android/abase'


#Android

class LoginPage < Calabash::ABase

  def trait

    "* id:'join_input_et'"   #this is a textField locator

  end


  def tapBackButton 

    touch("* id:'join_email_back'") #this is a backButton locator

  end


  def inputUserEmail(email)

    enter_text(email, use_keyboard: true, wait:false)

  end


  def nextButton

    "* id:'join_action_button'"

  end


  #on Android there is no alert about invalid email!!!

end

