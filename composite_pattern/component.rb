class Task

	# defines a base class which contains the common interface
	# (get_time_required) for all elements 

	attr_reader :name

	def initialize(name)
		@name = name
	end

	def get_time_required
		0.0
	end

end