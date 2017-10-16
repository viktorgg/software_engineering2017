require "CSV" 

HeroRow = 5
ClassRow = 1
NumRow = 2 
arr = CSV.read(ARGV[0]) 

arr.reach do |n|
	sum = `curl --form "file=@/home/elsyser/CSV.csv" #{n[HeroRow]}/sums` 
	filter = `curl --form "file=@/home/elsyser/CSV.csv" #{n[HeroRow]}/filters`
	interval = `curl --form "file=@/home/elsyser/CSV.csv" #{n[HeroRow]}/intervals`
	lin-regression = `curl --form "file=@/home/elsyser/CSV.csv" #{n[HeroRow]}/lin_regression` 
	p sum, filter, interval, lin_regression
	if(n[1] == NULL || n[2] == NULL || n[2] == NULL || n[4] == NULL || n[5] == NULL || n[6] == NULL)
	if(sum ==  ** && filters == ** && intervals == ** && lin_regression == **) 
	    p "#{n[ClassRow]} #{n[NumRow]} 1"
 	else 
		p  "#{n[ClassRow]} #{n[NumRow]} 0"
		end
	end
end 
