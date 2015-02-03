#context contains the data and a method call which utilises the formatter
#the formatter has access to the data because the context passes itself as an argument
class Report

	attr_reader :title, :body
	attr_accessor :formatter

	TITLE = "End of year report for 2015"
	BODY = ["This is all made up", "but lets pretend everything is", "going well, in the future"]

	def initialize(formatter, title=TITLE, body=BODY)
		#provided with some default values for title and body
		@title = title
		@body = body
		@formatter = formatter
	end

	def output_report
		#all formatters or strategies will have a common interface
		@formatter.output_report(self)
	end

end