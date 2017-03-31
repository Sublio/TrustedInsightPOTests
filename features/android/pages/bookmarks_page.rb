require 'calabash-android/abase'


#Android


class BookmarksPage < Calabash::ABase

  def trait
    "* text:'All'" #empty bookmarks label locator
  end

  def firstCell

    "android.support.v7.widget.RecyclerView descendant android.widget.FrameLayout index:0 RelativeLayout"

  end

  def firstCellHeader

    query('android.support.v7.widget.RecyclerView index:1 android.widget.TextView', :text).first

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


  def selectTypeFromTypePicker(type)

    sleep(1)

    bookmarksTypeRecycler = query("recyclerView id:'bookmarks_filters_container'").first

    attempts=0 #attempts counter

    while (query("* text:'#{type}'")).empty?

      pan("recyclerView id:'bookmarks_filters_container'", :left)
      attempts+=1
      break if attempts == 10

    end

    touch("* text:'#{type}'")

  end


  def deleteAllBookmarks
    while query("* text:'No bookmarks added yet'").empty?

      touch("recyclerView id:'bookmarks_container' relativeLayout")
      sleep(2)
      touch("* contentDescription:'Add Bookmark'")
      sleep(1)
      touch("* contentDescription:'Navigate up'")
      sleep(1)
      touch("* id:'bb_bottom_bar_item_container' descendant * id:'bottomBarItemOne'")
      touch("* id:'bb_bottom_bar_item_container' descendant * id:'bottomBarItemTwo'")
    end
  end

end