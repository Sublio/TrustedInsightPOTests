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


  def firstCell

    scrollToTheTopOfFeed
    touch("UITableViewCell")[1]

  end

  def cellBookmarksButton

    "* text:'Bookmark'"
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

  end


end

