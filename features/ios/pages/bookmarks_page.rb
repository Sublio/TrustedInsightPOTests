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

end