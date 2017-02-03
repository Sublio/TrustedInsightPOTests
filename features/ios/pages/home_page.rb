require 'calabash-cucumber/ibase'


#IOS


class HomePage < Calabash::IBase


  def trait

    "TITextField" #this is a textField locator

  end


  def tapBackButton 

    touch("* id:'iconTopCancel'") #this is a backButton locator
    
  end


  def inputUserEmail(email)

    keyboard_enter_text(email)

  end

  def nextButton

    "* marked:'NEXT'"

  end

  def ensureInvalidEmailAlert 

    touch(nextButton)
    
    if !element_exists("* marked:'Invalid Email'")
      fail("There is no alert!")
    end
    
  end


end