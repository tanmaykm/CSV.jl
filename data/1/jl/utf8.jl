let result = 
(
Any[1.0 2.0 3.0
    4.0 5.0 "ʤ"],

String["a" "b" "c"])
@assert readcsv("utf8.csv", has_header=true) == result
end
