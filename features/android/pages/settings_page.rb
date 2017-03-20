require 'calabash-android/abase'


#Android

class SettingsPage < Calabash::ABase

  def trait
    "* marked:'Settings'"   #this is a title of Settings screen
  end

  def settingsAvatar   
    "* id:'settings_photo'" # this is avatar on Settings screen
  end

  def settingsFirmLogo
    "* id:'settings_company_photo'" # Just a Firm logo
  end

  def settingsName
    query("* id:'settings_name'","text").first # "text" # User's First and Last names on Settings screen
  end

  def settingsPosition
    query("* id:'settings_position_name'","text").first # User Position on Settings screen
  end

  def settingsFirmName
    query("* id:'settings_company_name'","text").first#,"text" # Name of Company on on Settings screen
  end

  def settingsFirmNameButton
    "* id:'settings_company_name'"#,"text" # Name of Company on on Settings screen
  end

  def editProfileButton
    "* id:'settings_edit_profile'"
  end

  def manageInterestsButton
  "* id:'settings_interests'"
  end

  def preferencesButton
    "* id:'settings_preferences'"
  end

  def changePasswordButton
    "* id:'settings_change_password'"
  end

  def attachPhoneNumberButton
    "* id:'settings_text_phone_number'"
  end

  def phoneNumberConfirmedButton
  "* id:'settings_text_phone_number_confirmed'" # Visible if text is not empty

  end

  def aboutButton
    "* id:'settings_about'"
  end

  def settingsTermsButton
    "* id:'settings_terms'"
  end

  def settingsPrivacyPolicyButton
    "* id:'settings_privacy_policy'"
  end

  def feedbackButton
    "* id:'settings_leave_feedback'"
  end

  def logOutButton
    "* id:'settings_logout'"
  end

  def appVersion
    "* id:'settings_version'"
  end

  def goToBottom
      scroll("ResponsiveScrollView",:down)
  end


def showBottom
  perform_action('drag', 50, 50, 70, 20, 30)
end

end 
