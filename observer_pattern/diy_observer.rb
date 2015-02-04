class Report

	attr_accessor :text

	def initialize
		@text = []
	end
	#observers must have a common interface, here it is the update method
	def update(info)
		#the observer also has to know how to interact with the subject
		 @text << "#{info.name} has been changed to #{info.value}"
	end

end