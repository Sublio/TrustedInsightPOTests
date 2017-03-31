require 'calabash-android/abase'


#Android

class WhereDoYouWorkPage < Calabash::ABase

  def trait

    "AppCompatEditText id:'business_job_title_et'"

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

###############################

  def availElements

    "recyclerview * id:'title'"

  end

#################################

  def firmTitleEdit

    "* id:'business_company_et'"

  end

  def firmTitlesContainer

    "* id:'firms_container'"

  end

  def firmTitlesCloseButton

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

  def countryElementString

    "listview * id:'title'"

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

  def NextButton

    "* id:'next_btn'"

  end

  def unableToConnect

    "* text:'Unable to connect'"

  end

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

  enter_text(textfield, 1.times.map { [*'a'..'x'].sample }.join)
  wait_for_elements_exist(container)
  text_before = query(textfield).first["text"]
  puts(text_before)
  touch(closebutton)
  text_after = query(textfield).first["text"]
  puts(text_after)
  if text_after.empty?
    puts("Clear!")
  end

end

#query("listview", :getAdapter).first["count"].to_i - количество позиций
#query("ListView",{:smoothScrollToPosition=>100}) - скролл до позиции 

def pickCountryFromTheList(countryTitleEditText, countryElementString, pickerViewString, countryTitleString, confirmCountryButton, nextButton)

  touch(countryTitleEditText)
  i = 0
  loop do
    countries = query(countryElementString)
    for country in countries do
      if country["text"] == countryTitleString
        touch(country)
        i = i + 1
        break
      else
        next
      end
    end
    break if i == 1
    pan pickerViewString, :up
  end
  touch(confirmCountryButton)
  touch(nextButton)

end

=begin
#deprecated
  def pickCountryFromTheList(countryTitleEditText, countryElementString, pickerViewString, countryTitleString, confirmCountryButton, nextButton)

    touch(countryTitleEditText)
    rand(0..48).times do
      pan pickerViewString, :up
    end
    selected_country = query(country)[(rand(0..query(country).length - 1))]
    selected_country_title = selected_country["text"]
    touch(selected_country)
    sleep 1
    touch(confirmbutton)
    final_country_title = query(countryfield).first["text"]
    if selected_country_title == final_country_title
      puts("Country picked successfully")
    elsif selected_country_title != final_country_title
      puts("Country doesn't match!")
    end
    touch(nextbutton)

  end
=end

=begin
#pan until I see string
i = 0
loop do 

  countries = query("listview * id:'title'")

  for country in countries do
    if country["text"] == "Aruba"
      touch(country)
      i = i + 1
      break
    else
      next
    end
  end
  break if i == 1
  pan "listview", :up

end


=end