let result = [1.0 2.0 3.0]
@assert readcsv("no_header_row.csv", has_header=false) == result
end
