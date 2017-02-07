require 'calabash-cucumber/ibase'


#IOS


class FeedPage < Calabash::IBase


  def trait

    "view marked:'iconNavSearch'" #this is a home cell locator for Search button from topBar

  end



  def searchButton

    "button marked:'iconNavSearch'"
    
  end

end