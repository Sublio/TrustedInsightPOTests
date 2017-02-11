require 'calabash-cucumber/ibase'


#IOS


class NewToTrustedInsightPage < Calabash::IBase


  def trait

    "view marked:'New to Trusted Insight?'" #this is a NEW TO TRUSTED INSIGHT? label locator

  end


  def backButton 

    "button marked:'iconTopBack'" #this is a backButton locator
    
  end

  def firstName

    "TITextField index:0"

  end

  def lastName

    "TITextField index:1"

  end

  def passwd

    "TITextField index:2"

  end

=begin
#############################
#doesn't work cross-platform#
#############################

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
=end

  def inputFirstName(firstName)

    enter_text("TITextField index:0", firstName)

  end

  def inputLastName(lastName)

    enter_text("TITextField index:1", lastName)

  end

  def inputPassword(password)

    enter_text("TITextField index:2", password)

  end

  def clearFirstName

    clear_text("TITextField index:0")

  end

  def clearLastName

    clear_text("TITextField index:1")

  end

  def clearPasswd

    clear_text("TITextField index:2")

  end  

  def signUpButton

    "view marked:'SIGN UP'"

  end

  def showPasswordButton 

   "view marked:'iconShowPassword'"

  end

  def passwordVisibleOrHidden(passwdField, eyeButton)

    puts("Not yet released")
      
  end


  def invalidPasswordAlert

    wait_for_elements_exist("* marked:'Invalid password'")

  end


  def signUpButtonIsAvailable

  	query("TIArrowButton",:isEnabled).first

  end


  def okButton

  	"view marked:'OK'"

  end

  def invalidFirstLastNameSnack

    wait_for_elements_exist("* text:'First Name and Last name should be less than 30 characters!'")    
    wait_for_elements_exist("* marked:'OK'")
    sleep(3)
    touch("* marked:'OK'")
  end


end