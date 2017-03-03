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
    "TextInputLayout hint:'Country'"# This is a "Country" field
    end   

    def ShortBioLabel
    "* :'edit_text_header'"# This is a "Bio" label
    end   

    def BioField
    "AppCompatEditText id:'edit_text'"# This is a "Short Bio" field
    end

    def InvestorTypeLabel
    "TextInputLayout hint:'Investor type"# This is a "Investor type" label
    end   

    def InvestorLevelLabel
    "TextInputLayout hint:'Investor level'"# This is a "Investor level" label
    end       
 
    def TitleOnAlert
   "AppCompatTextView id:'title'"# This is a 
    end 

    def TextOnAlert
   "AppCompatTextView id:'content'"# This is a 
    end 

    def CancelOnAlert
   "* marked:'Cancel'"# This is a 
    end 

    def ContinueOnAlert
   "* marked:'Continue'"# This is a 
    end 

     def GoToBottom
    scroll("ResponsiveScrollView",:down)
    end

    def ShowBottom
    perform_action('drag', 50, 50, 70, 20, 30)
    end


end
