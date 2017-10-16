require "csv"

HeroRow = 5
ClassRow = 1
NumRow = 2
arr = CSV.read(ARGV[0])

arr.each do |n|
	sum = `curl --form "file=@/home/elsyser/11B/teh na prom/test.csv" #{n[HeroRow]}/sums`.to_s
	filter = `curl --form "file=@/home/elsyser/11B/teh na prom/test.csv" #{n[HeroRow]}/filters`.to_s
	interval = `curl --form "file=@/home/elsyser/11B/teh na prom/test.csv" #{n[HeroRow]}/intervals`.to_s
	lin_regression = `curl --form "file=@/home/elsyser/11B/teh na prom/test.csv" #{n[HeroRow]}/lin_regressions`.to_s
	if(n[1] != "" && n[2] != "" && n[3] != "" && n[4] != "" && n[5] != "" && n[6] != "")
		if(sum == "528.00" && filter == "272.00" && interval == "525.00" && lin_regression == "1.000000,0.000000")
			p "#{n[ClassRow]} #{n[NumRow]} #{n[3]} #{n[4]} 1"
		else
			p "#{n[ClassRow]} #{n[NumRow]} #{n[3]} #{n[4]} 0"
		end
	end
end
