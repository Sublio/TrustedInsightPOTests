require 'calabash-android/abase'


#Android

class HomePage < Calabash::ABase

  def trait

    "* id:'op_search'"   #this is a search field locator

  end


  def tapBackButton 

    touch("* id:'join_email_back'") #this is a backButton locator

  end


  def inputUserEmail(email)

    keyboard_enter_text(email)

  end


  def nextButton

    "* id:'join_action_button'"

  end

  def unableToConnect

    "* text:'Unable to connect'"
    
  end


  def ensureInvalidEmailAlert

    if !element_does_not_exist("* id:'join_action_button'")
      fail("there is a proceed button, although it shouldn't be there!")
    end

  end


  #on Android there is no alert about invalid email!!!

end

