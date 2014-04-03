let result = 
(
Any[1.0 2.0 3.0
    "Once upon \r\na time" 5.0 6.0
    7.0 8.0 9.0],

String["a" "b" "c"])
@assert readcsv("newlines_crlf.csv", has_header=true) == result
end
