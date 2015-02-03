require './template_method_pattern/template.rb'

class HTMLMenu < Menu #inherits from the basic menu class, which contains the menu template

	#contains output for HTML formatting of the menu

	def output_start
		puts '<html>'
	end

	def output_head
		puts '<head>'
		puts "<title> Menu for #{Time.now} </title>"
		puts '</head>'
	end

	def output_body_start
		puts '<body>'
	end

	def output_line(line)
		puts "<p> #{line} </p>"
	end

	def output_body_end
		puts '</body>'
	end

	def output_end
		puts '</html>'
	end


end