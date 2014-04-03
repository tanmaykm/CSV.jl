let result = 
(
[1.0 2.0 3.0],

String["a" "b" "c"])
@assert readcsv("dummy.csv", has_header=true) == result
end
