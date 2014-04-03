let result = 
(
Any["Chicago Reader" "1971-01-01" 40.0 "True" 1.0 "04:14:00" "1971-01-01T04:14:00" ""
    "Chicago Sun-Times" "1948-01-01" 63.0 "True" 1.24 "14:57:13" "1948-01-01T14:57:13" ""
    "Chicago Tribune" "1920-01-01" 164.0 "False" 4.180000001e7 "00:00:00" "1920-01-01T00:00:00" ""
    "Row with blanks" "" "" "" "" "" "" ""],

String["text" "date" "integer" "boolean" "float" "time" "datetime" "empty_column"])
@assert readcsv("testfixed_converted.csv", has_header=true) == result
end
