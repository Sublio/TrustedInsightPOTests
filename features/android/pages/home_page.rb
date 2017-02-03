require 'calabash-android/abase'


#Android




class HomePage < Calabash::ABase

  def trait

    "* text:'Home'"   #this is a search field locator

  end

  def searchButton

    "* contentDescription:'Search'"
  end


end

