class Payroll

	#no real changes are require in the observer to use the observable module

	def update(employee)
		puts "Congratulations #{employee.name}"
		puts "You're salary has changed to #{employee.salary}"
		puts "I hope that constitutes an increase!"
		puts "with love from the payroll"
	end

end