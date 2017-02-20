require 'calabash-android/abase'


#IOS


class BookmarksPage < Calabash::ABase

  def trait
    "* text:'All'" #empty bookmarks label locator
  end

  def firstCell

    "android.support.v7.widget.RecyclerView descendant android.widget.FrameLayout index:0 RelativeLayout"

  end

  def firstCellHeader

    query ("android.support.v7.widget.RecyclerView descendant android.widget.FrameLayout index:0 RelativeLayout android.widget.TextView")

  end


  def cellBookmarksButton

    #"* text:'Bookmark'"
    puts("There is no way to swipe and tap on user pannel skipped!!!!") #we need to return something, cuz touch method can't receive nil!!!
    "* text:'All'"

  end

  def emptyBookmarksTableLabel

    "* text:'No bookmarks added yet'"
  end


  def swipeOnFirstCellInRightSide

    #perform_action('swipe', 'right')
    puts("There is no way to swipe on bookmark in Android") #we need to return something, cuz touch method can't receive nil!!!

  end

end