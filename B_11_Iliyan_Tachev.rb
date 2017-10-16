require 'csv'
file=ARGV[0]
CSV.foreach(file) do |row|
hurl=row[4]
p `curl -F "file=@sum.csv" #{hurl}/sums == "10.00"`
p `curl -F "file=@sum.csv" #{hurl}/filters == "5.00"`
#p `curl -F "file=@sum.csv" #{hurl}/ == "2.00"`


