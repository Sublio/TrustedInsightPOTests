require 'calabash-android/abase'


#Android

class InvestorTypePage < Calabash::ABase

  def trait

    "* id:'types_title'"

  end

  def cell

  	"recyclerview relativelayout"

  end

  def cellText

  	"recyclerview relativelayout appcompattextview"

  end

  def pick_first_cell(cell)

  	levels = query(cell)
  	touch(levels[rand(0..levels.length - 1)])
  	sleep 2

  end

  def select_investor_type(cells)

  	cells = query(cells)
  	touch(cells[rand(0.celsl.length)])
  	sleep 2

  end


  def select_investor_type(cell, text)

  		header_text_before = query(text).first["text"]
  		puts(header_text_before)
  		scroll_count = rand(0..2)
		sleep 1
		scroll_count.times do
			pan "recyclerview", :up
		end
		sleep 1
		header_text_after = query(text).first["text"]
		puts(header_text_after)
		if header_text_before == header_text_after
			levels_next = query(cell).drop(0)
		elsif header_text_before != header_text_after
		else
			levels_next = query(cell)
		end
		sleep 1	
		touch(levels_next[rand(0..levels_next.length - 1)])
		#wait_for_elements_do_not_exist("* id:'indicator'")

  end


 end