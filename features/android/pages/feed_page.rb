require 'calabash-android/abase'
require 'calabash-android/operations'


#Android




class FeedPage < Calabash::ABase

  def trait

    "* text:'Home'"   #this is a search field locator

  end

  def searchButton

    "* contentDescription:'Search'"
  end

  def bookmarkTab

    "* id:'bottomBarItemTwo'"

  end

def settingsTab

    "* id:'bottomBarItemFive'"

  end

  def firstCell

    scrollToTheTopOfFeed
    "android.support.v7.widget.RecyclerView descendant android.widget.FrameLayout index:0 RelativeLayout"

  end


  def firstCellHeader

   query("android.support.v7.widget.RecyclerView descendant android.widget.FrameLayout index:0 RelativeLayout android.widget.TextView") #return all text from cell!!!!!!!
  end

  def cellBookmarksButton

    "* text:'Bookmark'"
  end

  def cellShareButton

    "* text:'Share'"
  end

  def scrollToTheTopOfFeed

    scroll_to_row("android.support.v7.widget.RecyclerView",0)

  end

  def scroll_table(text)

    scrollToTheTopOfFeed

    scroll_count = 30
    result = query("* text:'#{text}'")

    scroll_count.times {

      scroll("android.support.v7.widget.RecyclerView",:down)
      break if element_exists("* text:'#{text}'")
    }
  end


  def swipeOnFirstCellInRightSide

    perform_action('swipe', 'right')

  end

  def ensureThereIsASharemenu

    sleep(1)
    system("adb shell input keyevent 4") #system back button keyevent
    system("exit")
  end

  end


