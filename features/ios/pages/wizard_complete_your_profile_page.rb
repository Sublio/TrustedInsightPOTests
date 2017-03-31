require 'calabash-cucumber/ibase'


#iOS

class CompleteYourProfile < Calabash::IBase

  def trait

    "* marked:'Complete your profile'"

  end


  def skipOnWizard
    "* marked:'SKIP'"
  end

end