require 'calabash-cucumber/ibase'


#IOS

class WhereDoYouWorkPage < Calabash::IBase

  def trait

    "TITextField index:0"  

  end

  def jobTitleEdit

    "TITextField index:0"

  end

  def jobTitlesCloseButton

    "UIButton"

  end

  def jobTitlesContainer

    "UITableView"

  end

###############################

  def availElements

    "UITableView UILabel"

  end

#################################

  def firmTitleEdit

    "TITextField index:1"

  end

  def firmTitlesContainer

    "UITableView"

  end

  def firmTitlesCloseButton

    "UIButton"

  end

  def countryTitleEdit

    "TITextField index:2"

  end

  def countryCancelButton

    "* id:'buttonDefaultNegative'"

  end

  def countryOkButton

    "* id:'buttonDefaultPositive'"

  end

  def countryItself

    puts(" ")

  end

  def countryContainer

    "UIPickerTableView"

  end


  def inTransitionCheckbox

    touch("UIButtonLabel marked:'Currently in transition'")

  end

  def retiredCheckbox 

    touch("UIButtonLabel marked:'Retired'")

  end

  def tapBackButton 

    touch("* marked:'BACK'") #this is a backButton locator

  end

  def tapSkipButton

    touch("* marked:'SKIP'")

  end


  def tapNextButton

    touch("* marked:'NEXT'")

  end

  def NextButton

    "* marked:'NEXT'"

  end  

  def unableToConnect

    "* text:'Unable to connect'"
    
  end


#######################

  def pickItemFromAutocompleteList(textfield, container, element)

    enter_text(textfield, 1.times.map { [*'a'..'x'].sample }.join)
    wait_for_elements_exist(container)
    elements = query(element)
    picked_element = elements[rand(0..elements.length - 1)]
    picked_element_title = picked_element["text"]
    puts ("Picked element title is #{picked_element_title}")
    sleep 1
    touch(picked_element)
    sleep 1
    final_element_title = query(textfield).first["text"]
    puts ("Final element title is #{final_element_title}")
    sleep 1
    if final_element_title.include? picked_element_title
      puts("Element picked successfully")
    else
      puts("Element doesn't match!")
    end

  end


  def checkIfCleared(textfield, container, closebutton)

    enter_text(textfield, 1.times.map{[*'a'..'x'].sample}.join)
    wait_for_elements_exist(container)
    #text_before = query(textfield).first["text"]
    wait_for_elements_exist(closebutton)
    #puts(text_before)
    touch(closebutton)
    #text_after = query(textfield).first["text"]
    #puts("This is text after clear => #{text_after} <= here should be nothing!")
    if textfield.empty?
      puts("Clear!")
    end

  end

  def pickCountryFromTheList(countryfield, container, country, confirmbutton, nextbutton)

    touch(countryfield)
    rand(0..48).times do
      swipe :up, query: "UIPickerTableView index:1", force: :light
    end
    #touch(confirmbutton)
    #final_country_title = query(countryfield)["text"]
    #puts(final_country_title)
    touch(nextbutton)

  end

end