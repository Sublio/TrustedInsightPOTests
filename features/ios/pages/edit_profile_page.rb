require 'calabash-cucumber/ibase'


#iOS

class EditProfilePage < Calabash::IBase

  def trait
    sleep(2)
    "UINavigationBar id:'Edit profile'" #this is a title of Edit profile screen
  end

  def backButton
    "* marked:'iconTopBack'" # this is a "Back" button in left right corner on "Edit Profile" screen
  end

  def doneButton
    "* marked:'iconTopDone'" # this is a "V" button in top right corner on "Edit Profile" screen
  end

  def iconEditPhoto
    "* id:'iconEditPhoto'" # This is an icon on Avatar on Edit Profile screen
  end

  def titleOnAlert
    query("view marked:'Are you sure?' label", :text).first # This is a title of alert
  end

  def textOnAlert
    query("view marked:'All changed will be lost'", :text).first
  end

  def avatarImage
    "TIEditAccountImageView" # This is avatar on "Edit Profile" screen
  end

  def firstNameLabel
    "UILabel marked:'First name'" # This is a "First name" label
  end

  def firstNameField
    "UITextField index:0" # This is a "First name" field
  end

  def clearTextInFirstName
    sleep(3)
    touch(firstNameField)
    sleep(3)
    touch(firstNameField)
    sleep(3)
    touch("* marked:'Select All'")
    sleep(3)
    keyboard_enter_char("Delete")
    sleep(2)
    touch doneButton
  end

  def alertAboutMandatoryField
    alert_mandatory = query("label {text BEGINSWITH 'Please make sure you filled '}", "text")
    alert_mandatory_text = query("label {text BEGINSWITH 'Please make sure you filled '}", "text").first
    if (alert_mandatory.empty?)
      fail("Alert that field is mandatory not found")
    else
      puts("Alert #{alert_mandatory_text} appears!")
      puts("Let me close this alert")
      sleep(2)
      touch("* marked:'OK'")
    end
  end

  def noAlertAboutMandatoryField
    alert_mandatory = query("label {text BEGINSWITH 'Please make sure you filled '}", "text")
    if (alert_mandatory.empty?)
      puts("Alert about mandatory field disappears")
    else
      fail("Alert about mandatory field still appears!")
    end
  end

  def lastNameLabel
    "UILabel marked:'Last name'" # This is a "First name" label
  end


  def lastNameField
    "UITextField index:1" # This is a "Last name" field
  end

  def clearTextInLastName
    sleep(3)
    touch(lastNameField)
    sleep(3)
    touch(lastNameField)
    sleep(3)
    touch("* marked:'Select All'")
    sleep(3)
    keyboard_enter_char("Delete")
    sleep(2)
    touch doneButton
  end

  def companyLabel
    "UILabel marked:'Company'" # This is a "First name" label
  end

  def companyField
    "UITextField index:2"
  end

  def changeCompanyName
    touch companyField
    keyboard_enter_text("berry")
    sleep(2)
    keyboard_enter_char("Return")
  end

  def clearTextInCompany #for Checking Mandatory Fields Alert
    sleep(3)
    clear_text(companyField)
    sleep 1
    touch(companyField)
    sleep 1
    keyboard_enter_text("o")
    keyboard_enter_char("Delete")
    #sleep(3)
    #touch(@company_cell)
    #sleep(3)
    #touch("* marked:'Select All'")
    #sleep(3)
    #keyboard_enter_char("Delete")
    sleep(2)
    touch doneButton
  end


  def clearTextInCompanyR #for Checking Mandatory Fields Alert
    sleep(3)
    clear_text(companyField)
    sleep 1
    touch(companyField)
    sleep 1
  end

  def tapReturnOnKeyboard
    sleep(2)
    keyboard_enter_char("Return")
  end

  def titlePositionLabel
    "UILabel marked:'Title / Position'" # This is a "First name" label
  end


  def titlePositionField
    count = query("UITableViewCell").count
    index=0

    count.times do
      cell = query("UITableViewCell index: #{index}")
      label = query("UITableViewCell index:#{index} label", :text).first
      index +=1
      scroll_to_cell(:row => index, :section => 0)

      if label == "Title / Position".to_s
        puts("Title / Position field detected")
        touch cell
        #       clear_text
        break
      end
    end
  end


  def clearTextInPosition
    count = query("UITableViewCell").count
    index=0

    count.times do
      cell = query("UITableViewCell index: #{index}")
      label = query("UITableViewCell index:#{index} label", :text).first
      index +=1
      scroll_to_cell(:row => index, :section => 0)

      if label == "Title / Position".to_s
        puts("Title / Position field detected")
        touch cell
        checkClearedField
        #       scroll_to_cell(:row => index, :section => 0)
        #        swipe :up, :query => ("UITableViewWrapperView"), force: :light, animate: false
        #       sleep 5

        #      touch("* marked:'Clear text'")
        #       clear_text
        break
      end
    end

  end


  def checkClearedField
    textfield = query("UIFieldEditor", :text).first
    puts textfield
    if (textfield).empty?
      puts ("Cleared!")
    else
      keyboard_enter_char("Delete")
      textfield = query("UIFieldEditor", :text).first
      checkClearedField
    end
  end

  def randomTitlePosition
    random_set= (('A'..'Z').to_a)
    random_title = (0...7).map { |n| random_set.sample }.join
  end

  def countryLabel
    "UILabel marked:'Country'" # This is a "Country" label
  end

  def countryItself

    "TIPickerView UILabel"

  end

  def countryContainer

    "TIPickerView"

  end

  def countryOkButton
    "* marked:'DONE'"
  end

  def pickCountryFromTheList(countryField, countryContainer, countryItself, countryOkButton, showBottom)
    showBottom
    sleep(3)
    touch(countryField)
    wait_for_none_animating

    rand(0..10).times do
      elements = query(countryItself).uniq! { |e| e["text"] }
      swipe :down, query: countryContainer, force: :strong
      wait_for_none_animating
      if elements.length >= 4
      else
        swipe :up, query: countryContainer, force: :strong
      end
    end
    sleep(2)
    touch(countryOkButton)
    sleep(10)
  end

  def countryField
    "* marked:'iconInputSelect'" # this is an icon on country selection field
  end

  def shortBioLabel
    "UILabel marked:'Short Bio'" # This is a "Company" field
  end

  def bioField
    count = query("UITableViewCell").count
    index=0

    count.times do
      cell = query("UITableViewCell index: #{index}")
      label = query("UITableViewCell index:#{index} label", :text).first
      index +=1
      scroll_to_cell(:row => index, :section => 0)

      if label == "Short Bio".to_s
        puts("Short Bio detected")
        touch cell
        #       clear_text
        break
      end
    end
  end

  # This is a "Short Bio" field


  def clearTextInBio
    scroll("UITableView", :down)
    count = query("UITableViewCell").count
    index=0

    count.times do
      cell = query("UITableViewCell index: #{index}")
      label = query("UITableViewCell index:#{index} label", :text).first
      index +=1
      scroll_to_cell(:row => index, :section => 0)

      if label == "Short Bio".to_s
        puts("Short Bio detected")
        touch cell
        #sleep(5)
        #touch cell
        #        sleep(5)
        #touch cell
        #touch("* marked:'Select All'")
        150.times do
          keyboard_enter_char("Delete")
        end
        break
      end
    end
  end

  def inputUserBio(bio)
    keyboard_enter_text(bio)
  end

  def investorTypeLabel
    "UILabel marked:'Investor type" # This is a "Company" field
  end

  def investorLevelLabel
    "UILabel marked:'Investor level'" # This is a "Company" field
  end

  def cancelOnAlert
    "view marked:'Cancel'"

  end

  def continueOnAlert
    "view marked:'Continue'" # This is a Continue button
  end

  def hideKeyboard
    if keyboard_visible?
      keyboard_enter_char("Return")
      puts ("Ha-ha You can't hide keyboard using iPhone!")
    end
  end


  def showBottom
    scroll("UITableView", :down)
  end

end