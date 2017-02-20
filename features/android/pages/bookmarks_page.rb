require 'calabash-android/abase'


#IOS


class BookmarksPage < Calabash::ABase

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