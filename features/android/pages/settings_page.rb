require 'calabash-android/abase'


#Android

class SettingsPage < Calabash::ABase

  def trait
    "TextView text:'Settings'"   #this is a title of Settings screen
  end

  def SettingsAvatar   
    "* id:'settings_photo'" # this is avatar on Settings screen
  end

  def SettingsFirmLogo
    "* id:'settings_company_photo'" # Just a Firm logo
  end

  def SettingsName
    query("* id:'settings_name'","text").first # "text" # User's First and Last names on Settings screen
  end

  def SettingsPosition
    query("* id:'settings_position_name'","text").first # User Position on Settings screen
  end

  def SettingsFirmName
    "* id:'settings_company_name'"#,"text" # Name of Company on on Settings screen
  end

  def SettingsFirmNameButton
    "* id:'settings_company_name'"#,"text" # Name of Company on on Settings screen
  end

  def EditProfileButton
    "* id:'settings_edit_profile'"
  end

  def ManageInterestsButton
  "* id:'settings_interests'"
  end

  def PreferencesButton
    "* id:'settings_preferences'"
  end

  def ChangePasswordButton
    "* id:'settings_change_password'"
  end

  def AttachPhoneNumberButton
    "* id:'settings_text_phone_number'"
  end

  def PhoneNumberConfirmedButton
  "* id:'settings_text_phone_number_confirmed'" # Visible if text is not empty

  def AboutButton
    "* id:'settings_about'"
end
 #   about_button = query("* id:'settings_about'","text").first
 #   if (about_button.empty?)
 #       scroll("ResponsiveScrollView",:down)
 # end
 #   about_button = query("* id:'settings_about'","text").first


  def SettingsTermsButton
    "* id:'settings_terms'"
  end

  def SettingsPrivacyPolicyButton
    "* id:'settings_privacy_policy'"
  end

  def LogOutButton
    "* id:'settings_logout'"
  end

  def AppVersion
    "* id:'settings_version'"
  end

  def GoToBottom
 scroll("ResponsiveScrollView",:down)
  end

 end 
end
