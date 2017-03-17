require 'calabash-android/abase'


#Android

class WhatAreYourInterests < Calabash::ABase

  def trait

    "* id:'levels_title'"

  end

 def hideKeyboard
            hide_soft_keyboard
 end

def skipOnWizard 
"* marked:'SKIP'"
end	

 end