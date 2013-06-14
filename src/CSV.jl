module CSV
export readcsv2

include("csvfile.jl")

function readcsv2(fname::String; coltypes::Tuple=(), colreaders::Tuple=(), eol::Char='\n', sep::Char=',', quot::Union(Char,Nothing)=nothing)
    csv = CSVFile(fname, coltypes, colreaders, eol, sep, quot)
    fillall(csv)
    csv.cells
end
end
