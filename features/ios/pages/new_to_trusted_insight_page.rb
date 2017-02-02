require 'calabash-cucumber/ibase'


#IOS


class NewToTrustedInsightPage < Calabash::IBase


  def trait

    "view marked:'New to Trusted Insight?'" #this is a NEW TO TRUSTED INSIGHT? label locator

  end


  def backButton 

    "button marked:'iconTopBack'" #this is a backButton locator
    
  end


  def inputFirstName(firstName)

  	touch('label marked:"First name"')
    keyboard_enter_text(firstName)

  end

  def inputLastName(lastName)

  	touch('label marked:"Last name"')
  	keyboard_enter_text(lastName)
  end

  def inputPassword(password)

  	touch("label marked:'Password'")
  	keyboard_enter_text(password)
  end

  def signUpButton

    "view marked:'SIGN UP'"

  end

  def showPasswordButton 

   "view marked:'iconShowPassword'"

  end


  def invalidpPasswordAlert

  	"view marked:'Invalid password'"

  end


  def signUpButtonIsAvailable

  	query("TIArrowButton",:isEnabled).first

  end


  def okButton

  	"view marked:'OK'"

  end


end