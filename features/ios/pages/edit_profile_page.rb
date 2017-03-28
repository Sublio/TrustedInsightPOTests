require 'calabash-cucumber/ibase'


#iOS

class EditProfilePage < Calabash::IBase

    def trait
     sleep(2)
    "UINavigationBar id:'Edit profile'"  #this is a title of Edit profile screen
    end

    def backButton
    "* marked:'iconTopBack'" # this is a "Back" button in left right corner on "Edit Profile" screen
    end

    def doneButton
    "* marked:'iconTopDone'" # this is a "V" button in top right corner on "Edit Profile" screen
    end

    def iconEditPhoto
    "* id:'iconEditPhoto'" # This is an icon on Avatar on Edit Profile screen
    end

    def titleOnAlert
        query("view marked:'Are you sure?' label",:text).first  # This is a title of alert
    end

    def textOnAlert
        query("view marked:'All changed will be lost'",:text).first
    end

    def avatarImage
    "TIEditAccountImageView" # This is avatar on "Edit Profile" screen
    end

    def firstNameLabel
    "UILabel marked:'First name'"# This is a "First name" label
    end

    def firstNameField
    "UITextField index:0"# This is a "First name" field
    end

    def lastNameLabel
    "UILabel marked:'Last name'"# This is a "First name" label
    end
=begin
    def LastNameField
    "UITextField label:'Last name'"# This is a "Last name" field
    end
=end
    def companyLabel
    "UILabel marked:'Company'"# This is a "First name" label
    end
=begin
    def CompanyField
    "UITextField label:'Company'"# This is a "Company" field
    end
=end
    def titlePositionLabel
    "UILabel marked:'Title / Position'"# This is a "First name" label
    end
=begin
    def TitlePositionField
    "UITextField label:'Title / Position'"# This is a "Title / Position" field
    end
=end
    def countryLabel
    "UILabel marked:'Country'"# This is a "Company" field
    end   
    
    def iconInputSelect
    "* marked:'iconInputSelect'" # this is an icon on country selection field
    end

    def shortBioLabel
    "UILabel marked:'Short Bio'"# This is a "Company" field
    end   

    def bioField
    "TITextView label:'Short Bio'"# This is a "Short Bio" field
    end

    def investorTypeLabel
    "UILabel marked:'Investor type"# This is a "Company" field
    end   

    def investorLevelLabel
    "UILabel marked:'Investor level'"# This is a "Company" field
    end

    def cancelOnAlert
        "view marked:'Cancel'"

    end

    def continueOnAlert
        "view marked:'Continue'"    # This is a Continue button
    end







    def ShowBottom
       scroll("UITableView", :down)
    end

end
