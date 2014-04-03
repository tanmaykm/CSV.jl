let result = 
(
Any[1.0 2.0 3.0
    4.0 5.0 ""],

String["a" "b" "c"])
@assert readcsv("test_latin1.csv", has_header=true) == result
end
