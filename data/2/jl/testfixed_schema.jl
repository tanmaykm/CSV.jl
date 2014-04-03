let result = 
(
Any["text" 0.0 18.0
    "date" 18.0 10.0
    "integer" 29.0 4.0
    "boolean" 33.0 5.0
    "float" 38.0 11.0
    "time" 50.0 8.0
    "datetime" 58.0 19.0
    "empty_column" 77.0 2.0],

String["column" "start" "length"])
@assert readcsv("testfixed_schema.csv", has_header=true) == result
end
