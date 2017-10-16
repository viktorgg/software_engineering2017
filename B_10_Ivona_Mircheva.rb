require 'csv'

	doc = ARGV[0]
	
	CSV.foreach(file) do |row|
		hurl = row[5]
		
		p 'curl -F "file=@sum.csv" #{hurl}/sums' == "55.00"
		p 'curl -F "file=@sum.csv" #{hurl}/filters' == "0.00"
		p 'curl -F "file=@sum.csv" #{hurl}/intervals' == "0.00"
		p 'curl -F "file=@sum.csv" #{hurl}/lin_regressions' == "0.00"
		
	end
