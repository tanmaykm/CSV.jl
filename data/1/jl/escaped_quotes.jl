let result = 
(
Any[1.0 "ha \"ha\" ha"
    3.0 4.0],

String["a" "b"])
@assert readcsv("escaped_quotes.csv", has_header=true) == result
end
