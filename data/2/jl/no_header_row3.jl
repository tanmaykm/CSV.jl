let result = Float64[
1	2	3
4	5	6
]

@assert readcsv("no_header_row3.csv", has_header=false) == result
end
