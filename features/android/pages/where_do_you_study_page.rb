require 'calabash-android/abase'


#Android

class WhereDoYouStudyPage < Calabash::ABase

  def trait

    "* marked:'Where do you study?'"   #this is a textField locator

  end

  def tapBackButton 

    touch("* id:'back_btn'") #this is a backButton locator

  end

 end