#Victor 03/0317

require 'calabash-android/abase'


#Android
class EditProfilePage < Calabash::ABase

    def trait
    "TextView text:'Edit Profile'"  #this is a title of Edit profile screen
    end

    def BackButton  
    "* marked:'Navigate up'" # this is a "Back" button in left right corner on "Edit Profile" screen
    end

    def DoneButton  
    "* marked:'action_ok'" # this is a "V" button in top right corner on "Edit Profile" screen
    end

    def IconEditPhoto
    "* id:'edit_dashed_image'" # This is an icon on Avatar on Edit Profile screen
    end

    def AvatarOverlay
    "* id:'edit_profile_overlay_image'" # This is an icon on Avatar on Edit Profile screen
    end
    
    def AvatarImage
    "* id:'edit_profile_image'" # This is avatar on "Edit Profile" screen
    end

    def FirstNameLabel
    "TextInputLayout hint:'First name'"# This is a "First name" label
    end
 
    def FirstNameField
    "* tag:'First name'"# This is a "First name" field
    end
 
    def LastNameLabel
    "TextInputLayout hint:'Last name'"# This is a "First name" label
    end
 
    def LastNameField
    "* tag:'Last name'"# This is a "Last name" field
    end
 
    def CompanyLabel
    "TextInputLayout hint:'Company'"# This is a "Company" label
    end

    def CompanyField
    "* tag:'Company'"# This is a "Company" field
    end

    def TitlePositionLabel
    "TextInputLayout hint:'Title / Position'"# This is a "Title / Position" label
    end

    def TitlePositionField
    "* tag:'Title / Position'"# This is a "Title / Position" field
    end

    def CountryLabel
    "TextInputLayout hint:'Country'"# This is a "Country" label
    end

    def countryField
    "* tag:'Country_field'"# This is a "Country" field
    end

    def countryContainer
    "listview"
    end   

    def countryItself
    "* id:'title'"
    end

    def countryOkButton
    "* id:'buttonDefaultPositive'"
    end

    def countryCancelButton
    "* id:'buttonDefaultNegative'"
    end

    def ShortBioLabel
    "* :'edit_text_header'"# This is a "Bio" label
    end   

    def bioField
    "* tag:'Short Bio'"# This is a "Short Bio" field
    end

    def InvestorTypeLabel
    "TextInputLayout hint:'Investor type"# This is a "Investor type" label
    end   

    def investorTypeField
    "* tag:'Investor type'"# This is a "Country" field
    end

    def InvestorLevelLabel
    "TextInputLayout hint:'Investor level'"# This is a "Investor level" label
    end       
 
    def TitleOnAlert
   "AppCompatTextView id:'title'"# This is a title of alert
    end 

    def TextOnAlert
   "AppCompatTextView id:'content'"# This is a text on alert
    end 

    def CancelOnAlert
   "* marked:'Cancel'"# This is a Cancel button
    end 

    def ContinueOnAlert
   "* marked:'Continue'"# This is a Continue button
    end 

     def goToBottom
    scroll("ResponsiveScrollView",:down)
    end

    def showBottom
    perform_action('drag', 50, 50, 70, 20, 30)
    end

    def HideKeyboard
        hide_soft_keyboard
    end

    def inputUserBio(bio)
    keyboard_enter_text(bio)
    end

    def clearTextInBio
        clear_text_in("* tag:'Short Bio'")
    end

    def ClearTextInCompany
        clear_text_in("* tag:'Company'")
    end

    def ClearTextInPosition
        clear_text_in("* tag:'Title / Position'")
    end

     def clearTextInFirstName
        clear_text_in("* tag:'First name'")
    end

    def clearTextInLastName
        clear_text_in("* tag:'Last name'")
    end


    def RandomTitlePosition
    random_set= (('A'..'Z').to_a)
    random_title = (0...7).map { |n| random_set.sample }.join
    end

    def alertAboutMandatoryField
    alert_mandatory = query("* marked:'Please fill out this field'","text")
    if (alert_mandatory.empty?)
        fail("Alert that field is mandatory not found")
    else
        puts("Alert \"Please fill out this field\" appears!")
    end
    end

    def noAlertAboutMandatoryField
    alert_mandatory = query("* marked:'Please fill out this field'","text")
    if (alert_mandatory.empty?)
        puts("Alert about mandatory field disappears")
    else
        fail("Alert about mandatory field still appears!")
    end
    end

  def pickCountryFromTheList(countryfield, container, country, confirmbutton, showbottom)
    showbottom
    sleep(1)
    touch(countryfield)
    rand(0..48).times do
      pan container, :up
    end
    selected_country = query(country)[(rand(0..query(country).length - 1))]
    selected_country_title = selected_country["text"]
    touch(selected_country)
    sleep (1)
    touch(confirmbutton)
    final_country_title = query(countryfield).first["text"]
    if selected_country_title == final_country_title
      puts("Country picked successfully")
    elsif selected_country_title != final_country_title
      fail("Country doesn't match!")
    end

  end

end #end of class