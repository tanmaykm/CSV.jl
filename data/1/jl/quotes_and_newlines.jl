let result = 
(
Any[1.0 "ha \n\"ha\" \nha"
    3.0 4.0],

String["a" "b"])
@assert readcsv("quotes_and_newlines.csv", has_header=true) == result
end
