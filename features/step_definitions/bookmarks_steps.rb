
#bookmarks steps


When (/^I Open empty Bookmarks page$/) do

    @currentPage =page(BookmarksPage).await(timeout: 20)
end

And (/^I Ensure there is no any bookmarks$/) do

  unless query(@currentPage.firstCell).empty?

      fail("There are  some bookmarks")
      #TODO Implement cell cleaner!

  end
end

Then (/^there should be label No bookmarks added yet$/) do

  check_element_exists(@currentPage.emptyBookmarksTableLabel)
end


