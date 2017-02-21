require 'calabash-android/abase'


#Android


class BottomNavBarPage < Calabash::ABase


  def trait

    "* id:'bb_bottom_bar_item_container'"


  end


  def feedButton

    "* id:'bb_bottom_bar_item_container' descendant * id:'bottomBarItemOne'"

  end

  def bookmarkButton
    "* id:'bb_bottom_bar_item_container' descendant * id:'bottomBarItemTwo'"

  end

  def contactsButton

    "* id:'bb_bottom_bar_item_container' descendant * id:'bottomBarItemThree'"

  end

  def notificationsButton

    "* id:'bb_bottom_bar_item_container' descendant * id:'bottomBarItemFour'"

  end

  def settingsButton

    "* id:'bb_bottom_bar_item_container' descendant * id:'bottomBarItemFive'"

  end

end
