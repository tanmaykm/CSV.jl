let result = 
(
Any[1.0 27.0 "" "I'm too long!"
    "" "I'm too short!" "" ""
    0.0 "mixed types.... uh oh" 17.0 ""],

String["column_a" "column_b" "column_c" ""])
@assert readcsv("bad.csv", has_header=true) == result
end
