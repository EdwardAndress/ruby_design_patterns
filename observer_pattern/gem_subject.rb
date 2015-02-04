require 'observer'

class Employee

	#this ruby module provides several methods which allow observers
	#to be added and notified
	include Observable

	attr_reader :name, :salary, :address

	def initialize( name, title, salary)
		@name = name
		@title = title
		@salary = salary
	end

	#again a custom writer is needed
	#the additional call, changed, is required before notify_observers
	#this is a feature of the observable module
	def salary=(new_salary)
		@salary = new_salary
		changed
		notify_observers(self)
	end

end