let result = 
(
[1.0 2.0 3.0],

String["a" "b" "c"])
@assert readcsv("simple_crlf.csv", has_header=true) == result
end
