require 'calabash-cucumber/ibase'


#iOS

class YourInterestsPage < Calabash::IBase

  def trait

    "TITagCloudSubmoduleBaseCollectionViewCell"

  end

  def tap_back_button

  	touch("* marked:'BACK'")

  end

  def tap_next_button

  	touch("* marked:'NEXT'")

  end

  def tap_skip_button

  	touch("* marked:'SKIP'")

  end

  def show_more

  	#touch("* marked:'SHOW MORE'").first
  	"UIButton"

  end

  def tags

  	"TITagCloudSubmoduleBaseCollectionViewCell"

  end

  def recycler

  	"UITableView"

  end

  #query("UITableView", :contentOffset) - изменение скролла
  #query("UITableView", :contentOffset).first["Y"]

  def checkIfShowMoreWork(tags, showmorebutton, recycler)

  	  wait_for_none_animating
	  loop do
	  	wait_for_none_animating
	  	if element_exists(showmorebutton)
		  	tags1 = query(tags)
		  	wait_for_none_animating
		  	touch(showmorebutton)
		  	wait_for_none_animating
		  	tags2 = query(tags)
		  	if tags1 != tags2
		  		puts("Success! It shows more tags!")
		  	else
		  		puts("Show More doesn't work!")
		  	end
		  	scroll_prev = query(recycler, :contentOffset).first["Y"].to_i
		  	#puts("scroll prev is #{scroll_prev}")
		  	swipe :up, :query => recycler, force: :light, animate: false
		  	wait_for_none_animating
		  	scroll_next = query(recycler, :contentOffset).first["Y"].to_i
		  	#puts("scroll next is #{scroll_next}")
	  	else
	  		scroll_prev = query(recycler, :contentOffset).first["Y"].to_i
	  		#puts("scroll prev is #{scroll_prev}")
	  		swipe :up, :query => recycler, force: :normal
	  		wait_for_none_animating
	  		scroll_next = query(recycler, :contentOffset).first["Y"].to_i
	  		#puts("scroll next is #{scroll_next}")
	  	end
	  	if (scroll_prev == scroll_next) || ((scroll_next - scroll_prev) <= 3)
	  		break
	  	#elsif (scroll_next - scroll_prev) <= 3
	  	#	break	  		
	  	end
	  end
  		
  end

  def scroll_back(recycler)

  	wait_for_none_animating
  	until (query(recycler, :contentOffset).first["Y"].to_i) <= 10
  		swipe :down, :query => recycler, force: :strong	
  		#puts(query(recycler, :contentOffset).first["Y"].to_i)
  	end

  end

  def tagsprogress

  	"TIProgressView UIView"

  end

  def checkIfICanSelectTags(tags, showmorebutton, progress)

	#flash("TIProgressView UIView")
	#query("TIProgressView UIView index:1").first["frame"]["width"]
	wait_for_none_animating
	sleep 2
	#touch(showmorebutton)
	#wait_for_none_animating
	tags = query(tags)

	touch(tags[0])
	wait_for_none_animating
	#wait_for_elements_exist(progress)
	progressfirst = query(progress)[1]["frame"]["width"]
	if (progressfirst > 0)
		puts("First tag picked!")
	end

	progressprev = query(progress)[1]["frame"]["width"]
	#puts("Progress prev = #{progressprev}")
	touch(tags[1])
	progressnext = query(progress)[1]["frame"]["width"]
	#puts("Progress next = #{progressnext}")
	if progressprev != progressnext
		puts("Second tag picked!")
	end

	progressprev = query(progress)[1]["frame"]["width"]
	#puts("Progress prev = #{progressprev}")
	touch(tags[2])
	progressnext = query(progress)[1]["frame"]["width"]
	#puts("Progress next = #{progressnext}")
	if progressprev != progressnext
		puts("Third tag picked!")
	end

	progressprev = query(progress)[1]["frame"]["width"]
	puts("Progress prev = #{progressprev}")
	touch(tags[3])
	wait_for_none_animating
	progressnext = query(progress)[1]["frame"]["width"]
	puts("Progress next = #{progressnext}")
	#touch(tags[3])
	#progressnext = query(progress)[1]["frame"]["width"]
	if progressprev == progressnext
		puts("Fourth tag picked!")
	else
		puts("Something went wrong with 4th tag!")
	end

  end

 end