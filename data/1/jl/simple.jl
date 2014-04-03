let result = 
(
[1.0 2.0 3.0],

String["a" "b" "c"])
@assert readcsv("simple.csv", has_header=true) == result
end
