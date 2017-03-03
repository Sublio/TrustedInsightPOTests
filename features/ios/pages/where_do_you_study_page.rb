require 'calabash-cucumber/ibase'


#IOS

class WhereDoYouStudyPage < Calabash::IBase

 def trait

    "* marked:'Where do you study?'"   #this is a textField locator

  end

  def tapBackButton 

    touch("* marked:'BACK'") #this is a backButton locator

  end

end