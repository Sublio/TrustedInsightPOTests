When(/^I check if Show More button works$/) do

  @current_page = page(YourInterestsPage).await(timeout: 30)
  @current_page.checkIfShowMoreWork(@current_page.tags, @current_page.show_more, @current_page.recycler)

end

When(/^I check if I can pick tags$/) do

  @current_page = page(YourInterestsPage).await(timeout: 30)
  @current_page.checkIfICanSelectTags(@current_page.tags, @current_page.show_more, @current_page.tagsprogress)

end

When(/^I scroll all the way to the top$/) do

  puts("Entry point")
  @current_page.scroll_back(@current_page.recycler)
  puts("end")
  #sleep 10

end