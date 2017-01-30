require "calabash-cucumber"

module Helpers 

	include Calabash

	def self.tap_text_position(query, text_to_find)
	  wait_for_element_exists(query)

	  text = query(query).first['text']
	  index = text.index(text_to_find) + text_to_find.length/2
	  hor = query(query, :getLayout, getPrimaryHorizontal: index).first.to_i
	  line = query(query, :getLayout, getLineForOffset: index).first
	  ver = query(query, :getLayout, getLineBaseline: line).first.to_i

	  touch(query, x: 0, y: 0, offset: {x: hor, y: ver})
	end



end