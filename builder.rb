class FileParser
	def self.build(file_path)
		case File.extname(file_path)
		when ".csv" then CsvParser.new(file_path)
		when ".xlsx" then XlsxParser.new(file_path)
		else
			Document::Unknown.error
		end
	end
end

class BaseParser
	def initialize(file_path)
		@file_path = file_path
	end
end

class CsvParser < BaseParser
	
	def rows
		# do what you want
		puts " i am at CsvParser rows"
	end

end

class XlsxParser < BaseParser
	
	def rows
		# do what you want
		puts " i am at XlsParser rows"
	end

end

class Document
	module Unknown
		def self.error
			puts "Unknown document!"
		end
	end
end

file_parser = FileParser.build("/Users/musaabdillah/Downloads/sunday_report.xlsx")
file_parser.rows