require 'csv'

file = ARGV[0]

CSV.foreach(file) do |row|
	heroku_url = row[5]
	
	p `curl -F "file=@sum.csv" #{heroku_url}/sums` == "10.00"
	p `curl -F "file=@sum.csv" #{heroku_url}/filters` == "0.00"
	p `curl -F "file=@sum.csv" #{heroku_url}/intervals` == "0.00"
	p `curl -F "file=@sum.csv" #{heroku_url}/sums` == "1.000000, 0.000000"

end
