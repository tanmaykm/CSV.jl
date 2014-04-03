let result = 
(
Any[1.0 "{\"type\": \"Point\", \"coordinates\": [102.0, 0.5]}"],

String["key" "val"])
@assert readcsv("json.csv", has_header=true) == result
end
