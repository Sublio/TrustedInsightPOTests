require 'calabash-cucumber/ibase'


#IOS


class FeedPage < Calabash::IBase

  def trait

    "view marked:'iconNavSearch'" # this is a home cell locator for Search button from topBar

  end


  def searchButton

    "button marked:'iconNavSearch'"

  end

  def bookmarkTab

    "* marked:'Bookmarks'"

  end

  def settingsTab

    "* marked:'Settings'"

  end


  def firstCell

    "UITableViewCell label"

  end

  def firstCellHeader

    query("UITableViewCell index:0 label", :text).first

  end



  def cellBookmarksButton

    "* marked:'Bookmark'"
  end

  def cellShareButton

    "* marked:'Share'"
  end

  def scrollToTheTopOfFeed

    scroll_to_cell(:row => 0, :section => 0)

  end

  #Scroll to text in table view until given text found

  def scroll_table(text)

    section=0

    scroll_to_cell(:row => 0, :section => 0) #scroll to top of table

    sleep 1
    #Below code loops through each cell to check if the appropriate text was found

    each_cell(:animate => false, :post_scroll => 0.2) do |row, sec|

      if query("tableViewCell indexPath:#{row},#{sec} label", :text).first==text

        break # if text found break from loop

      end

      section=section+1

    end

  end


  def swipeOnFirstCellInRightSide

    swipe :left, :query => "UITableViewCell index:0", :offset => {:x => 123, :y => 0}, :"swipe-delta" => {:vertical => {:dx => 0, :dy => 350}}
    wait_for_none_animating
  end


  def cellContainer
    "UITableView"
  end


  def ensureThereIsASharemenu

    sleep(2)
    wait_for_element_exists("view marked:'ActivityListView'", timeout: 10)
    touch("button marked:'Cancel'")


  end

end