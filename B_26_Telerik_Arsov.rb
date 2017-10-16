require 'csv'

TestCsvPath = ""

tests = {{"/sums", "/filters", "/intervals", "/lin_regressions"}, {1, 1, 1, 1}}

csv = File.read(ARGV[0])
csv_file = CSV.parse(csv, :headrs => true)

csv.each do |row|
	hUrl = row[5]
	result = 1;
	tests.each do |test|
		response = "to do"
		#todo 
		if response 
			result = 0;
		end
	end
end