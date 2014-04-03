let result = [4.0 5.0 6.0]
@assert readcsv("no_header_row2.csv", has_header=false) == result
end
