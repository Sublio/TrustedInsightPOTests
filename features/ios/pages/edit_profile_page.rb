require 'calabash-cucumber/ibase'


#iOS

class EditProfilePage < Calabash::ABase

    def trait
    "UINavigationBar id:'Edit profile'"  #this is a title of Edit profile screen
    end

    def BackButton  
    "* marked:'iconTopBack'" # this is a "Back" button in left right corner on "Edit Profile" screen
    end

    def DoneButton  
    "* marked:'iconTopDone'" # this is a "V" button in top right corner on "Edit Profile" screen
    end

    def IconEditPhoto
    "* id:'iconEditPhoto'" # This is an icon on Avatar on Edit Profile screen
    end
    
    def AvatarImage
    "TIEditAccountImageView" # This is avatar on "Edit Profile" screen
    end

    def FirstNameLabel
    "UILabel marked:'First name'"# This is a "First name" label
    end
=begin
    def FirstNameField
    "UITextField label:'First name'"# This is a "First name" field
    end
=end
    def LastNameLabel
    "UILabel marked:'Last name'"# This is a "First name" label
    end
=begin
    def LastNameField
    "UITextField label:'Last name'"# This is a "Last name" field
    end
=end
    def CompanyLabel
    "UILabel marked:'Company'"# This is a "First name" label
    end
=begin
    def CompanyField
    "UITextField label:'Company'"# This is a "Company" field
    end
=end
    def TitlePositionLabel
    "UILabel marked:'Title / Position'"# This is a "First name" label
    end
=begin
    def TitlePositionField
    "UITextField label:'Title / Position'"# This is a "Title / Position" field
    end
=end
    def CountryLabel
    "UILabel marked:'Country'"# This is a "Company" field
    end   
    
    def iconInputSelect
    "* marked:'iconInputSelect'" # this is an icon on country selection field
    end

    def ShortBioLabel
    "UILabel marked:'Short Bio'"# This is a "Company" field
    end   

    def BioField
    "TITextView label:'Short Bio'"# This is a "Short Bio" field
    end

    def InvestorTypeLabel
    "UILabel marked:'Investor type"# This is a "Company" field
    end   

    def InvestorLevelLabel
    "UILabel marked:'Investor level'"# This is a "Company" field
    end       



       
  

def ShowBottom
scroll("UITableView", :down)
end

end
