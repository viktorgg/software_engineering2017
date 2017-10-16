require 'csv'

input_array = ARGV[0]

	csv = CSV.parse("home/elsyser/11b/tablica.csv".read, converters: :numeric)
        
	sum = 0  
	csv.each do |row|
		sum = sum + row[0].to_f
	end

	sum = sum.ceil


	CSV.foreach(input_array) do |row|
		herourl = row[4]
	
		r1 =`curl -F "file=@home/elsyser/11b/imena.csv" #{herourl}/sums `
		
		if r1 == sum 
			puts 1
		end

		puts 0
	end

	
