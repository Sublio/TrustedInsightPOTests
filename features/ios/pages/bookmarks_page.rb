require 'calabash-cucumber/ibase'


#IOS


class BookmarksPage < Calabash::IBase

  def trait
    "* marked:'All bookmarks'" #empty bookmarks label locator
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

  def emptyBookmarksTableLabel

    "* marked:'No bookmarks added yet'"
  end


  def swipeOnFirstCellInRightSide

    swipe :left, :query => "UITableViewCell label", :offset => {:x => 123, :y => 0}, :"swipe-delta" => {:vertical => {:dx => 0, :dy => 350}}
  end


  def selectTypeFromTypePicker(type)

    touch("TIDropDownButton")

    sleep(1)

    touch("view marked:'#{type}'")

  end

  def deleteAllBookmarks


    cellsCount = query("UITableViewCell").count


    cellsCount.times do

      wait_for_none_animating
      wait_for_element_exists("UITableViewCell")

      touch("UITableViewCell") #touch first cell from tableView
      wait_for_element_exists("view marked:'iconNavBookmarkFull'")
      touch("view marked:'iconNavBookmarkFull'")
      wait_for_element_exists("view marked:'iconTopBack'")
      touch("view marked:'iconTopBack'")

    end

  end

end