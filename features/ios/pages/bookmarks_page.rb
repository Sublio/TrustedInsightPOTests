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

    query("UITableViewCell label",:text).first

  end


  def cellBookmarksButton

    "* marked:'Bookmark'"

  end

  def emptyBookmarksTableLabel

    "* marked:'No bookmarks added yet'"
  end


  def swipeOnFirstCellInRightSide

    swipe :left, :query => "UITableViewCell label", :offset => {:x => 123, :y => 30}, :"swipe-delta" =>{:vertical => {:dx=> 0, :dy=> 250} }
  end


  def selectTypeFromTypePicker(type)

      touch("TIDropDownButton")

      sleep(1)

      touch("view marked:'#{type}'")

  end

  def deleteAllBookmarks


  end

end