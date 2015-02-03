#the strategy class contants formatting methods for the report
#each different format required would be dealt with using a new class
class HTMLFormatter

	def output_report(report)
		#this method is called from the context (report), which passes itself as an argument
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
end