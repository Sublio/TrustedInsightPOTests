require 'calabash-cucumber/ibase'


#IOS

class PasswordPage < Calabash::IBase

  def trait

    "button marked:'Forgot password?'" #this is a forgotPassword button

  end


  def backButton

    "button marked:'iconTopBack'"

  end


  def textField

    "UITextField"
  end

  def eyeButton

    "button marked:'iconShowPassword'"

  end


  def forgotPasswordConfirmationAlert

    "UIAlertControllerActionView"

  end


  def loginButton

    "* marked:'LOG IN'"

  end


  def confirmButtonOnForgotPasswordConfirmationAlert


    "* marked:'Reset'"

  end


  def declineButtonOnForgotPasswordConfirmationAlert


    "* marked:'Cancel'"

  end

  def greetingsMessage

    "label {text BEGINSWITH 'Welcome'}"

  end

  def userMail

    "label {text CONTAINS 'mail'}"
  end

  def userAvatar

    "imageView"
  end

  def wrongPasswordBar

    "view marked:'Incorrect password, Please try again!'"
  end


  def unableToConnectBar

    "view marked:'Unable to connect'"

  end

  def okButton

    "view marked:'OK'"
  end


end