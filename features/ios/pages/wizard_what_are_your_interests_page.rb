require 'calabash-cucumber/ibase'


#iOS

class WhatAreYourInterests < Calabash::IBase

  def trait

    "* marked:'What are your interests?'"

  end

# def hideKeyboard
#           hide_soft_keyboard
#end

def skipOnWizard 
"* marked:'SKIP'"
end	

 end