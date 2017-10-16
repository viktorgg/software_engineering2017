require "CSV"

student = CSV.read(ARGV[0])

student.each do |row|
t
	sum = `curl –form "file=@ /home/Desktop/Test.csv" #{row[5]}/sums`.to_s 
	filter = `curl –form "file=@/home/Desktop/Test.csv" #{row[5]}/filter`.to_s 
	interval = `curl –form "file=@/home/Desktop/Test.csv" #{row[5]}/interval`.to_s
	regresion = `curl –form "file=@/home/Desktop/Test.csv" #{row[5]}/lin_regresion` .to_s 	
if(sum == "528.00" && filter == "272.00" && interval == "525.00" && regresion == "1.000000,0.000000")
	p #{row[3]} #{row[4]} 1;
end
	
end 	

