class Menu

	#for this example menu items are hardcoded but in reality they would likely be given as an argument to the .new constructor
	def initialize
		@food = {main: {fish: 10, meat: 12, veg: 8}, dessert: {chocolate: 7, fondue: 12, sorbetto: 5}}
		@drinks = {alcoholic: {wine: 4, beer: 3, spirits: 5}, non_alcoholic: {juice: 2, smoothie: 3, water: "free!"}}
	end

	#this template breaks the output task into output-format-dependent and output-format-independent methdos
	def output
		output_start
		output_head
		output_body_start
		output_body
		output_body_end
		output_end
	end

	#this output-format-independent method iterates through the menu items
	def output_body
		@food.each do |course|
			puts course[0]
			course[1].each do |dish|
				output_line("#{dish[0]} : #{dish[1]}")
			end
		end
	end

	#output-format-dependent methods are properly defined in output-format-specific subclasses
	#these methods should never be called directly from the basic Menu class, therefore errors are in place here
	def output_start
		#empty so that reports that do not need this, will not have to overwrite
	end

	def output_head
		#empty so that reports that do not need this, will not have to overwrite
	end


	def output_body_start
		#empty so that reports that do not need this, will not have to overwrite
	end

	def output_line
		raise 'Called abstract method: output_line'
	end

	def output_body_end
		#empty so that reports that do not need this, will not have to overwrite
	end

	def output_end
		#empty so that reports that do not need this, will not have to overwrite
	end

end