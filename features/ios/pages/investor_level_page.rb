require 'calabash-cucumber/ibase'


#iOS

class InvestorTypePage < Calabash::IBase

  def trait

    "* marked:'Select your investor type'"

  end

  def cell

    "TIInvestorTypeTableViewCell"

  end

  def proceed_as_partner(partner_string)

    touch("* marked:'#{partner_string}'")
    wait_for_none_animating

  end

  def proceed_as_not_limited_partner(cell, partner_string)

    touch("* marked:'#{partner_string}'")
    wait_for_none_animating
    cells = query(cell)
    cells.drop(1).each do |cell1|
      @current_page = page(InvestorTypePage).await(timeout: 30)
      touch(cell1)
      wait_for_none_animating
      @current_page = page(YourInterestsPage).await(timeout: 30)
      @current_page.tap_back_button
      wait_for_none_animating
    end
    touch(cells.first)
    wait_for_none_animating

  end

  def scroll_down

    swipe :up, :query => "UITableView", force: :strong
    wait_for_none_animating
    sleep 1

  end

end
