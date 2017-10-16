require 'csv'

file = ARGV[0]

CSV.foreach(file) do |row|
	hurl = row[4]
	if row[1] != "" && row[2] != "" && row[3] != "" && row[4] != "" && row[5] != "" && row[6] != "" 
	p 'curl -F "file=@sum.csv" #{hurl}/sums' == ""
	p 'curl -F "file=@sum.csv" #{hurl}/filters' == ""
	p 'curl -F "file=@sum.csv" #{hurl}/intervals' == ""
	p 'curl -F "file=@sum.csv" #{hurl}/lin_regressions' == ""
	end
end
