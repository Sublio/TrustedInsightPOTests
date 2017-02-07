
When(/^I enter random character as job title to get results$/) do

  @current_page = page(WhereDoYouWorkPage).await(timeout: 60)
  enter_text(jobTitleEdit, 1.times.map { [*'a'..'x'].sample }.join)
  wait_for_elements_exist(jobTitlesContainer)

end

When(/^I check if Close button clear job textfield$/) do

  @current_page = page(WhereDoYouWorkPage).await(timeout: 60)
  touch(jobTitlesCloseButton)
  if jobTitleEdit.emtpy?
  	puts("Clear!")
  end

end

When(/^I pick random firm title from given results$/) do

  @current_page = page(WhereDoYouWorkPage).await(timeout: 60)
  picked_job_title = @current_page.picked_job["text"]
  puts ("Picked job title is #{picked_job_title}")
  sleep 1
touch(picked_job)
sleep 2
final_job_title = query("* id:'business_job_title_et'").first["text"]
puts ("Final job title is #{final_job_title}")
sleep 2
if (final_job_title.include? picked_job_title) == true
	puts("Job picked successfully")
else
	puts("Job doesn't match!")
end

end