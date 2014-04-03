let result = 
(
Any[1.0 "b" "c"
    1.0 "b" "c"
    4.0 "b" "c"],

String["a" "b" "c"])
@assert readcsv("join_b.csv", has_header=true) == result
end
