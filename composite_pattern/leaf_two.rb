class MixTask < Task 

	def initialize
		# calls initialize method in super class passing a name
		super("Mix Task")
	end

	def get_time_required
		# overwrites the superclass method
		3.0
	end

end