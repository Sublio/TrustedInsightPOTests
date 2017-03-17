require 'calabash-android/abase'


#Android

class InvestorType < Calabash::ABase

  def trait

    "* id:'types_title'"

  end

 def hideKeyboard
            hide_soft_keyboard
 end

def skipOnWizard #Tap Skip Button on Wizard
#skip_on_wizard = query("* marked:'SKIP'")
#	if (skip_on_wizard.empty?)
#		hideKeyboard
#	else
"* marked:'SKIP'"
#	end
end	

 end