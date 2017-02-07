require 'calabash-android/abase'


#Android

class WhereDoYouWorkPage < Calabash::ABase

  def trait

    "* marked:'Where do you work?'"   #this is a textField locator

  end

  def jobTitleEdit

    "* id:'business_job_title_et'"

  end

  def jobTitlesCloseButton

    "* id:'business_job_title_close_btn'"

  end

  def jobTitlesContainer

    "* id:'job_titles_container'"

  end

  #############################

  def availJobs

    query("recyclerview id:'job_titles_container' * id:'title'")

  end

  def pickedJob

    availJobs[rand(0..availJobs.length - 1)]

  end



  def companyTitleEdit

    "* id:'business_company_et'"

  end

  def companyTitlesContainer

    "* id:'firms_container'"

  end

  def companyTitlesCloseButton

    "* id:'business_company_close_btn'"

  end

  def countryTitleEdit

    "* id:'business_country_et'"

  end

  def countryCancelButton

    "* id:'buttonDefaultNegative'"

  end

  def countryOkButton

    "* id:'buttonDefaultPositive'"

  end

  def countryItself

    "* id:'title'"

  end

  def countryContainer

    "listview"

  end


  def inTransitionCheckbox

    "* id:'currently_transition'" 

  end

  def retiredCheckbox 

    touch("* id:'retired'")

  end

  def tapBackButton 

    touch("* id:'back_btn'") #this is a backButton locator

  end

  def tapSkipButton

    touch("* id:'skip_btn'")

  end


  def tapNextButton

    touch("* id:'back_btn'")

  end

  def unableToConnect

    "* text:'Unable to connect'"
    
  end

end