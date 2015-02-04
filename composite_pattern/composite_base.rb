class CompositeTask < Task

	# base_class for all composite tasks which includes common methods
	def initialize(name)
		super(name)
		@sub_tasks = []
	end

	def add_sub_task(task)
		@sub_tasks << task
	end

	def remove_subtask(task)
		@sub_tasks.delete(task)
	end

	def get_time_required
		time = 0.0
		@sub_tasks.each {|task| time += task.get_time_required }
		time
	end

	def <<(task)
		@sub_tasks << task
	end

	def [](index)
		@sub_tasks[index]
	end

	def []=(index, new_value)
		@sub_tasks[index] = new_value
	end

end