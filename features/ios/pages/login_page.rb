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

    enter_text(email, use_keyboard: true, wait:false)

  end

  def nextButton

    "* marked:'NEXT'"

  end

  def invalidEmailAlert 

    "* marked:'Invalid Email'"

  end


end