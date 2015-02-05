class Iterator

	#can work with arrays or strings

	def initialize(string_or_array)
		# @aggregate is the thing we want to iterate through
		@aggregate = string_or_array
		@current_item_index = 0
	end

	def has_next?
		# returns true if there is another item beyond the current item (index)
		@current_item_index < @aggregate.length
	end

	def current_item
		@aggregate[@current_item_index]
	end

	def next_item
		@aggregate[@current_item_index + 1]
	end

	def list_items
		while self.has_next?
			puts current_item
			@current_item_index += 1
		end
			@current_item_index = 0
	end

end