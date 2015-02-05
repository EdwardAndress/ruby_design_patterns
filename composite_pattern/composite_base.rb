class CompositeTask < Task

	# base_class for all composite tasks which includes common methods
	def initialize(name)
		super(name)
		@sub_tasks = []
	end

	def add_sub_task(task)
		@sub_tasks << task
		task.parent = self
	end

	def remove_subtask(task)
		@sub_tasks.delete(task)
		task.parent = nil
	end

	def number_of_comprising_basic_tasks
		# replaces basic method in Task baseclass
		# this method moves down the tree by recursion -
		# if the task is a 'basic task' it adds 1 to total
		# if the task is a composite task it uses this method again
		# to iterate through comprising tasks
		# smart!  And not my idea.
		total = 0
		@sub_tasks.each {|task| total += task.number_of_comprising_basic_tasks}
		total
	end

	def get_time_required
		time = 0.0
		@sub_tasks.each {|task| time += task.get_time_required }
		time
	end

	def <<(task) # array-like method for adding sub_tasks
		@sub_tasks << task
	end

	def [](index) # array-like method for viewing sub_tasks
		@sub_tasks[index]
	end

	def []=(index, new_value) # array-like method for swapping subtasks
		@sub_tasks[index] = new_value
	end

end