require 'calabash-cucumber/ibase'


#iOS

class SettingsPage < Calabash::IBase

  def trait
    "UINavigationBar id:'Settings'" #this is a title of Settings screen
  end


  def settingsAvatar
    #PLEASE FIX ME!!! WE ARE AVATAR AND FIRMLOGO
    "TIFeedImageView"
    # "* marked:'user_avatar_image'" # this is avatar on Settings screen
  end

  def settingsFirmLogo
    #PLEASE FIX ME!!! I PLACEHOLDER
    "TIFadeImageView" # Just a Firm logo
  end

  def settingsName
    query("* marked:'settings_name'", :text).first # User's First and Last names on Settings screen
  end

  def settingsPosition
    query("* marked:'settings_position_name'", :text).first # User Position on Settings screen
  end

  def settingsFirmName
    query("* marked:'settings_company_name' label", :text).first # Name of Company on Settings screen
  end

  def settingsFirmNameButton
    "* marked:'settings_company_name'" # Name of Company on Settings screen
  end

  def editProfileButton
    "* marked:'Edit profile'"
  end

  def manageInterestsButton
    "* marked:'Manage interests'"
  end

  def preferencesButton
    "* marked:'Preferences'"
  end

  def changePasswordButton
    "* marked:'Change password'"
  end

  def attachPhoneNumberButton
    "* marked:'Add phone number'"
  end

=begin
  def PhoneNumberConfirmedButton
  "* id:'settings_text_phone_number_confirmed'" # Visible if text is not empty
=end
  def aboutButton
    "* marked:'About'"
  end

  def settingsTermsButton
    "* marked:'Terms of Use'"
  end

  def settingsPrivacyPolicyButton
    "* marked:'Privacy Policy'"
  end

  def feedbackButton
    "* marked:'Leave Feedback'"
  end

  def logOutButton
    "* marked:'Log out'"
  end

  def appVersion
    "label {text BEGINSWITH 'TrustedInsight '}"
  end

  def showBottom
    scroll("UITableView", :down)
  end

end
