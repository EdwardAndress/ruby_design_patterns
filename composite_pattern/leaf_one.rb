class AddDryIngredientsTask < Task

	def initialize
		#calls intialize from the superclass passing the task name
		super('Add dry ingredients')
	end

	def get_time_required
		1.0 #overwrites superclass method
	end

end