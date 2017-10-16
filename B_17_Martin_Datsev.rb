require 'csv'    

CsvFilePath = "./B_17_Martin_Datsev.csv";
csv_text = File.read(ARGV[0])
csv = CSV.parse(csv_text, :headers => true)
tests = [
    {
        url: "/sums",
        response: "11.00"
    },
    {
        url: "/intervals",
        response: "10.00"
    },
    {
        url: "/filters",
        response: "10.00"
    },
    {
        url: "/lin_regressions",
        response: "10.00"
    }
]

csv.each do |row|
    hurl = row[5];
    
    curl = "curl --form \"file=@#{CsvFilePath}\" #{hurl}";
    correct = "1";
    tests.each{ |test| 
        res = `#{curl}#{test[:url]}`;
        puts res;
        if(res != test[:res])
            correct = "0";
        end
    }
    puts row[2] + " " + correct;
end

# response.code
# response.body