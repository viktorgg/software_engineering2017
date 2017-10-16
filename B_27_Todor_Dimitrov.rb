require 'csv'
file = ARGV[0]
CSV.foreach(file) do |row|
	url=row[4]
	p `curl -F "file=@/home/todorakisa/Desktop/proverka.csv" #{url}/sums` == "22.00"
end
