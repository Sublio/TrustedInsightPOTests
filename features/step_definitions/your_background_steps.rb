Then /^I proceed as student$/ do

  @current_page = page(YourBackgroundPage).await(timeout: 60)
  @current_page.proceedAsStudent(@current_page.levelsCells)
  @current_page = page(WhereDoYouStudyPage).await(timeout: 30)

end

Then /^I proceed as worker$/ do

  @current_page = page(YourBackgroundPage).await(timeout: 30)
  @current_page.proceedAsWorker(@current_page.levelsCells)
  @current_page = page(WhereDoYouWorkPage).await(timeout: 30)

end
