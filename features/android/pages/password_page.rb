require 'calabash-android/abase'


#Android

class PasswordPage < Calabash::ABase

  def trait

    "* id:'forgot_password_btn'"   #this is a forgotPassword button

  end


  def backButton

   "* id:'join_password_back'"

  end


  def textField

    "* id:'join_input_et'"
  end

  def eyeButton

    "* id:'password_visibility_img'"
  end


  def forgotPasswordConfirmationAlert

    "MDRootLayout"

  end


  def loginButton

    "* id:'join_action_button'"

  end


  def confirmButtonOnForgotPasswordConfirmationAlert


    "* id:'buttonDefaultPositive'"

  end


  def declineButtonOnForgotPasswordConfirmationAlert


    "* id:'buttonDefaultNegative'"

  end

  def greetingsMessage

    "* id:'join_profile_greetings'"

  end

  def userMail

    "* id:'join_profile_email'"
  end

  def userAvatar

    "* id:'join_profile_photo'"
  end

  def wrongPasswordBar

    "* text:'Incorrect password, Please try again!'"
  end


  def unableToConnectBar

    "* text:'Unable to connect'"

  end


end
