require 'calabash-android/abase'


#Android


class NewToTrustedInsightPage < Calabash::ABase

def trait

	hide_soft_keyboard #we need to hide keyb in case it will cover some ui that will be in trait :(
    "* marked:'New to Trusted Insight?'" #this is a NEW TO TRUSTED INSIGHT? label locator

  end


  def backButton 

    "* marked:'join_email_back'" #this is a backButton locator
    
  end


  def inputFirstName(firstName)

  	touch('* marked:"First name"')
    keyboard_enter_text(firstName)

  end

  def inputLastName(lastName)

  	touch('* marked:"Last name"')
  	keyboard_enter_text(lastName)
  end

  def inputPassword(password)

  	touch("* marked:'Password'")
  	keyboard_enter_text(password)
  end

  def signUpButton

  	hide_soft_keyboard
    "* marked:'SIGN UP'"

  end

  def showPasswordButton 

   hide_soft_keyboard
   "* marked:'password_visibility_img'"

  end


  def invalidpPasswordAlert

  	"* marked:'Invalid password'"

  end


  def signUpButtonIsAvailable

  	query("* marked:'SIGN UP'", :enabled).first

  end


  def okButton

  	"* marked:'OK'"

  end


end