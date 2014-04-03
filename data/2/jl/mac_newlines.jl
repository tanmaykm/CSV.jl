let result = 
(
Any[1.0 2.0 3.0
    "Once upon\ra time" 5.0 6.0],

String["a" "b" "c"])
@assert readdlm("mac_newlines.csv", ',', '\r', has_header=true) == result
end
