let result = 
(
Any["John" "Doe" "120 any st." "Anytown, WW" 8123.0],

String["first" "last" "address" "city" "zip"])
@assert readcsv("comma_in_quotes.csv", has_header=true) == result
end
