require 'calabash-cucumber/ibase'


#IOS


class LoginPage < Calabash::IBase


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

  def invalidEmailAlert 

    "* marked:'Invalid Email'"

  end


end