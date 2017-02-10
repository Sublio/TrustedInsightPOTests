Then /^I proceed as student$/ do

@current_page = page(YourBackgroundPage).await(timeout: 60)

@current_page.levelsCells.each do |cell|
	if cell["text"].include? "Student"
		touch(cell)
		@current_page = page(WhereDoYouStudyPage).await(timeout: 30)
		@current_page.tapBackButton
	end
end

end

Then /^I proceed as worker$/ do

	@current_page = page(YourBackgroundPage).await(timeout: 30)
	sleep 5
	cells2 = []
	@current_page.levelsCells.each do |cell|
		if (cell["text"].include? "Student") == false
			cells2 << cell
		end
	end
	touch(cells2[rand(0..cells2.length - 1)])

@current_page = page(WhereDoYouWorkPage).await(timeout: 30)

end
