class MakeBatterTask < CompositeTask

	# uses the composite_base_class and calls in subtasks
	def initialize
		super('Make batter')
		add_sub_task( AddDryIngredientsTask.new )
		add_sub_task( AddLiquidsTask.new )
		add_sub_task( MixTask.new )
	end

end