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

  def firstName

    "* id:'firstname_et'"

  end

  def lastName

    "* id:'lastname_et'"

  end

  def passwd

    "* id:'password_et'"

  end


  def inputFirstName(firstName)

  	#touch('* marked:"First name"')
    #keyboard_enter_text(firstName)

    enter_text("* id:'firstname_et'", firstName)

  end

  def inputLastName(lastName)

  	#touch('* marked:"Last name"')
  	#keyboard_enter_text(lastName)

    enter_text("* id:'lastname_et'", lastName)

  end

  def inputPassword(password)

  	#touch("* marked:'Password'")
  	#keyboard_enter_text(password)

    enter_text("* id:'password_et'", password)

  end

  def clearFirstName

    clear_text_in("* id:'firstname_et'")

  end

  def clearLastName

    clear_text_in("* id:'lastname_et'")

  end

  def clearPasswd

    hide_soft_keyboard
    clear_text_in("* id:'password_et'")

  end  

  def signUpButton

  	hide_soft_keyboard
    "* marked:'SIGN UP'"

  end

  def showPasswordButton 

   hide_soft_keyboard
   "* marked:'password_visibility_img'"

  end

  def passwordVisibleOrHidden(passwdField, eyeButton)

    passwd_visible = query(passwdField, :inputType).first
    touch(eyeButton)
    passwd_hidden = query(passwdField, :inputType).first
    if passwd_visible == passwd_hidden 
      fail('Password didnt show up')
    elsif passwd_visible != passwd_hidden
      puts('Password show up!')
    end
      
  end


  def invalidPasswordAlert

  	wait_for_elements_exist("* marked:'Invalid password'")

  end


  def signUpButtonIsAvailable

  	query("* marked:'SIGN UP'", :enabled).first

  end


  def okButton

  	touch("* marked:'OK'")

  end

  def invalidFirstLastNameSnack

    wait_for_elements_exist("* text:'First Name and Last name should be less than 30 characters!'")

  end

end
