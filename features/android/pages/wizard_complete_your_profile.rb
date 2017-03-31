require 'calabash-android/abase'


#Android

class CompleteYourProfile < Calabash::ABase

  def trait

    "* id:'short_bio_input'"

  end

  def hideKeyboard
    hide_soft_keyboard
  end

  def skipOnWizard
    "* marked:'SKIP'"
  end

end