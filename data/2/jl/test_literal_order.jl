let result = 
(
[192.0 1.0
 27.0 2.0
 3.0 3.0],

String["a" "b"])
@assert readcsv("test_literal_order.csv", has_header=true) == result
end
