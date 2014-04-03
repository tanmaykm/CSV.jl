let result = 
(
Any[1.0 "b" "c"
    2.0 "b" "c"
    3.0 "b" "c"],

String["a" "b" "c"])
@assert readcsv("join_a.csv", has_header=true) == result
end
