require 'calabash-android/ibase'



#IOS


class LoginPage < Calabash::IBase


  def trait

    "TITextField" #this is a textField locator

  end


  def tapBackButton 

    touch("* id:'iconTopCancel'") #this is a backButton locator
    page(WelcomePage).await(timeout: 30)

  end


  def inputUserEmail(email)

    enter_text(email, use_keyboard: true, wait:false)

  end


end