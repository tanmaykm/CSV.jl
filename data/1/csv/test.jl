for file in readdir("../jl")
    !endswith(file, ".jl") && continue
    println("testing $file")
    include(joinpath("../jl", file))
end

