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

  def ensureInvalidEmailAlert 

    touch(nextButton)

    wait_for(timeout: 60,
         timeout_message: "Could not find alert") do
       element_exists("* marked:'Invalid Email'")
    end  
  end


end