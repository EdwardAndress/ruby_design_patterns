class AddLiquidsTask < Task 

	def initialize
		#calls intialize from the superclass passing the task name
		super("Add liquids")
	end

	def get_time_required
		#overwrites superclass method
		1.0
	end

end