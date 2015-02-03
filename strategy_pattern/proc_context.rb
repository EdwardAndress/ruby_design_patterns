class Report

	attr_reader :title, :body
	attr_accessor :formatter

	#accepts a proc in place of an object meaning new classes need not be designed for each format
	#but a proc needs to be written instead
	def initialize(&formatter)
		@title = "End of year report for 2015"
		@body = ["This is all made up", "but lets pretend everything is", "going well, in the future"]
		@formatter = formatter
	end

	def output_report
		@formatter.call(self)
	end

end

HTML_FORMATTER = lambda do |report|
	puts '<html>'
		puts '	<head>'
		puts "		<title>#{report.title}</title>"
		puts '	</head>'
		puts '	<body>'
		report.body.each do |line|
			puts "		<p>#{line}</p>"
		end
		puts '	</body>'
		puts '</html>'
	end