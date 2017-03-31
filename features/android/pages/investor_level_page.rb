require 'calabash-android/abase'


#Android

class InvestorTypePage < Calabash::ABase

  def trait

    "* id:'types_title'"

  end


  def hideKeyboard

    hide_soft_keyboard

  end

  def skipOnWizard #Tap Skip Button on Wizard

    "* marked:'SKIP'"

  end


  def cell

    "recyclerview relativelayout"

  end

  def proceed_as_partner(partner_string)

    sleep(2)
    touch("* marked:'#{partner_string}'")

  end

  def proceed_as_not_limited_partner(cell, partner_string)

    touch("* marked:'#{partner_string}'")
    cells = query(cell)
    cells.drop(1).each do |cell1|
      @current_page = page(InvestorTypePage).await(timeout: 30)
      touch(cell1)
      @current_page = page(YourInterestsPage).await(timeout: 30)
      @current_page.tap_back_button
    end
    touch(cells.first)

  end

  def scroll_down

    flick "recyclerview", :up
    sleep 1

  end

end

