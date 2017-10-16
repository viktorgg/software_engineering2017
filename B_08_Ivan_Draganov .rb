require'csv'

file = ARGV[0]

CSV.foreach(file) do |row|
	hurl = row[4]

	p `curl -F "file=@B_08_Ivan_Draganov.csv" #{hurl}/sums` == "5" 
	p `curl -F "file=@B_08_Ivan_Draganov.csv" #{hurl}/filters` == "0"
	p `curl -F "file=@B_08_Ivan_Draganov.csv #{hurl}/intervals` == "0"		
	p `curl -F "file=@B_08_Ivan_Draganov.csv" #{hurl}/lin_regressions` == "0"
end 
