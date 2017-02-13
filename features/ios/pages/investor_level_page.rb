require 'calabash-cucumber/ibase'


#Android

class InvestorTypePage < Calabash::IBase

  def trait

    "* marked:'Select your investor type'"

  end

  def cell

  	"UITableViewCellContentView"

  end

  def cellText

  	"UITableViewWrapperView UILabel"

  end

  def select_investor_type(cell, text)

  	@current_page = page(InvestorTypePage).await(timeout: 30)
  	levels = query(cell)
  	touch(levels[rand(0..levels.length - 1)])
  	while @current_page = page(InvestorTypePage).await(timeout: 30)
  		header_text_before = query(text).first["text"]
  		scroll_count = rand(0..1)
		sleep 2
		scroll_count.times do
			swipe :up, query: "UITableView"
		end
		sleep 2
		wait_for_elements_exist(cell)
		header_text_after = query(text).first["text"]
		if header_text_before == header_text_after
			levels_next = query(cell).drop(1)
		elsif header_text_before != header_text_after
			levels_next = query(cell)
		end
		sleep 1	
		touch(levels_next[rand(0..levels_next.length - 1)])
	end

  end

 end