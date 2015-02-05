class Task

	# defines a base class which contains the common interface
	# (get_time_required) for all elements 

	attr_reader :name
	attr_accessor :parent

	def initialize(name)
		@name = name
		@parent = nil
	end

	def get_time_required
		0.0
	end

	def number_of_comprising_basic_tasks
		1
	end

end