require 'csv'

	file = params["file"].read
		arr = CSV.parse(file, converters: :numeric)
		
		for i in 0..arr.length - 1
			str = arr[i][4]
			curlResponse_sums = `curl –form "file=@/home/roberta/programming/try.csv"  #{str/sum}`
			#curlResponse = `#{curlRequest}`
			curlResponse_filters = `curl –form "file=@/home/roberta/programming/try.csv"  #{str/filters}`
			curlResponse_intervals = `curl –form "file=@/home/roberta/programming/try.csv" #{str/intervals}`
			curlResponse_regressions = `curl –form "file=@/home/roberta/programming/try.csv"  #{str/lin_regressions}`
			if(curlResponse_sums == "15.00" && curlResponse_filters == "2.00" && curlResponse_intervals == "15.00" && curlResponse_regressions == "")
				 
			end
		end
