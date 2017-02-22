require 'calabash-cucumber/ibase'


#Android

class SettingsPage < Calabash::ABase

  def trait
   "UINavigationBar id:'Settings'"   #this is a title of Settings screen
  end

=begin
  def SettingsTitle

    settings_title = query("UILabel text:'Settings'")[1]
    if settings_title.empty?
      fail("Settings screen not found!")
    else
    end
    
=end

  def SettingsAvatar   
    "* marked:'user_avatar_image'" # this is avatar on Settings screen
  end

  def SettingsFirmLogo
    "* marked:'firm_logo_image'" # Just a Firm logo
   end

  def SettingsName
   "UILabel text:'Fedor Cherepashkin'" # User's First and Last names on Settings screen
  end

  def SettingsPosition
    "UILabel text:'Assistant Vice President'" # User Position on Settings screen
  end

  def SettingsFirmName
    "UILabel text:'Ros'"  # Name of Company on Settings screen
  end

def SettingsFirmNameButton
    "UILabel text:'Ros'"  # Name of Company on Settings screen
  end

  def EditProfileButton
   "* marked:'Edit profile'"
  end

  def ManageInterestsButton
  "* marked:'Manage interests'"
  end

  def PreferencesButton
    "* marked:'Preferences'"
  end

  def ChangePasswordButton
    "* marked:'Change password'"
  end

  def AttachPhoneNumberButton
    "* marked:'Add phone number'"
  end
=begin
  def PhoneNumberConfirmedButton
  "* id:'settings_text_phone_number_confirmed'" # Visible if text is not empty
=end
  def SettingsAboutButton
    "* marked:'About'"
  end

  def SettingsTermsButton
   "* marked:'Terms of Use'"
  end

  def SettingsPrivacyPolicyButton
    "* marked:'Privacy Policy'"
  end

  def FeedbackButton
    "* marked:'Leave FeedBack'"
  end

  def LogOutButton
    "* marked:'Log out'"
  end

  def AppVersion
    "label {text BEGINSWITH 'TrustedInsight '}"
  end

  def GoToBottom
    scroll("UITableView", :down)
  end

end
