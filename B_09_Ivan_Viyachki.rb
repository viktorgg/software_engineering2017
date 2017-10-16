require "CSV"

student = CSV.read(ARGV[0])

student.each do |row|

	sum = `curl –form „file=@ /home/Desktop/Test.csv“ #{row[5]}/sums`  
	filter = `curl –form „file=@/home/Desktop/Test.csv“ #{row[5]}/filter` 
	interval = `curl –form „file=@/home/Desktop/Test.csv“ #{row[5]}/interval`
	regresion = `curl –form „file=@/home/Desktop/Test.csv“ #{row[5]}/lin_regresion`  	


end 	

