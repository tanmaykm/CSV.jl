let result = 
(
Any["    !endswith(file" " \".jl\") && continue"
    "    println(\"testing \$file\")" ""
    "    include(joinpath(\"../jl\"" " file))"
    "end" ""
    "" ""],

String["for file in readdir(\"../jl\")" ""])
@assert readcsv("test.jl", has_header=true) == result
end
