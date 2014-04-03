let result = 
(
Any[1.0 "" ""
    2.0 3.0 4.0],

String["a" "b" "c"])
@assert readcsv("empty.csv", has_header=true) == result
end
