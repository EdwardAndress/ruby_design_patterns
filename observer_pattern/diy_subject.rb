class Info

	attr_reader :name, :value, :observers

	#subject is initialized with an empty list of interested parties (observers)
	def initialize(name, value)
		@name = name
		@value = value
		@observers = []
	end

	#changing the value using this custom writer method also informs observers
	def value=(new_value)
		@value = new_value
		inform_obeservers
	end

	#iterates through the oberservers array and lets them know about the change
	#requires a common interface for all observers (update, for example)
	def inform_obeservers
		@observers.each { |observer| observer.update(self) }
	end

	#finally, a method to add observers either individually or as an array
	def add_observers(new_observers)
		if new_observers.is_a?(Array)
			new_observers.each { |new_observer| @observers << new_observer }
		else
			@observers << new_observers
		end
	end

end