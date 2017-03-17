require 'calabash-android/abase'


#Android

class YourInterestsPage < Calabash::ABase

  def trait

    "* id:'levels_title'"

  end

  def tap_back_button

  	touch("* id:'back_btn'")

  end

  def tap_next_button

  	touch("* id:'next_btn'")

  end

  def tap_skip_button

  	touch("* id:'skip_btn'")

  end

  def show_more

  	#touch("* marked:'SHOW MORE'").first
  	"* marked:'…'"

  end

  def tags

  	"* id:'tag_text'"

  end

  def recycler

  	"recyclerview id:'interests_container'"

  end

  #query("UITableView", :contentOffset) - изменение скролла
  #query("UITableView", :contentOffset).first["Y"]

  def checkIfShowMoreWork(tags, showmorebutton, recycler)

  	  #wait_for_none_animating
	  loop do
	  	#wait_for_none_animating
	  	if element_exists(showmorebutton)
		  	tags1 = query(tags)
		  	#wait_for_none_animating
		  	touch(showmorebutton)
		  	#wait_for_none_animating
		  	tags2 = query(tags)
		  	if tags1 != tags2
		  		puts("Success! It shows more tags!")
		  	else
		  		puts("Show More doesn't work!")
		  	end
		  	scroll_prev = query(recycler, :computeVerticalScrollOffset).first.to_i
		  	puts("scroll prev is #{scroll_prev}")
		  	perform_action('drag', 50, 50, 50, 30, 18)
		  	#wait_for_none_animating
		  	scroll_next = query(recycler, :computeVerticalScrollOffset).first.to_i
		  	puts("scroll next is #{scroll_next}")
	  	else
	  		scroll_prev = query(recycler, :computeVerticalScrollOffset).first.to_i
	  		puts("scroll prev is #{scroll_prev}")
	  		perform_action('drag', 50, 50, 50, 20, 20)
	  		#wait_for_none_animating
	  		scroll_next = query(recycler, :computeVerticalScrollOffset).first.to_i
	  		puts("scroll next is #{scroll_next}")
	  	end
	  	if (scroll_prev == scroll_next)
	  		break
	  	#elsif (scroll_next - scroll_prev) <= 3
	  	#	break	  		
	  	end
	  end
  		
  end

  def scroll_back(recycler)

  	#wait_for_none_animating
  	until (query("recyclerview", :computeVerticalScrollOffset).first.to_i) <= 10
  		perform_action('drag', 50, 50, 30, 50, 1)	
  		puts(query("recyclerview", :computeVerticalScrollOffset).first.to_i)
  	end

  end

  def tagsprogress

  	"* id:'progress_drawable'"

  end

  def checkIfICanSelectTags(tags, showmorebutton, progress)

	#flash("TIProgressView UIView")
	#query("TIProgressView UIView index:1").first["frame"]["width"]
	#wait_for_none_animating
	#sleep 2
	#touch(showmorebutton)
	#wait_for_none_animating
	tags = query(tags)
	sleep 2
	touch(tags[0])
	#wait_for_none_animating
	#wait_for_elements_exist(progress)
	progressfirst = query(progress).first["rect"]["width"].to_i
	if (progressfirst > 0)
		puts("First tag picked!")
	end

	progressprev = query(progress).first["rect"]["width"].to_i
	puts("Progress prev = #{progressprev}")
	touch(tags[1])
	progressnext = query(progress).first["rect"]["width"].to_i
	puts("Progress next = #{progressnext}")
	if progressprev != progressnext
		puts("Second tag picked!")
	end

	progressprev = query(progress).first["rect"]["width"].to_i
	puts("Progress prev = #{progressprev}")
	touch(tags[2])
	progressnext = query(progress).first["rect"]["width"].to_i
	puts("Progress next = #{progressnext}")
	if progressprev != progressnext
		puts("Third tag picked!")
	end

	progressprev = query(progress).first["rect"]["width"].to_i
	puts("Progress prev = #{progressprev}")
	touch(tags[3])
	progressnext = query(progress).first["rect"]["width"].to_i
	puts("Progress next = #{progressnext}")
	if progressprev == progressnext
		puts("Fourth tag picked! Bar shouldn't move aleady!")
	end

  end

 end