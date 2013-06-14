type CSVFile
    fname::String
    offsets::Array{Int,2}
    sbuff::String
    ncols::Int
    eol::Char
    sep::Char
    quot::Union(Char,Nothing)
    coltypes::Tuple
    colreaders::Tuple
    cells::Array{Any, 2}

    function CSVFile(fname::String, coltypes::Tuple=(), colreaders::Tuple=(), eol::Char='\n', sep::Char=',', quot::Union(Char,Nothing)=nothing)
        buff = readall_bytes(fname)
        s = bytestring(buff)
        println("read all bytes")

        nrows, ncols = find_dims(s, eol, sep, quot)
        println("dimensions: $nrows x $ncols")

        (coltypes == ()) && (coltypes = ntuple(ncols, x->String))

        if((length(colreaders) == 1) && (ncols > 1))
            fn = colreaders[1]
            colreaders = ntuple(ncols, x->fn)
        end

        offsets = zeros(Int, nrows, ncols)
        cells = Array(Any, nrows, ncols)
        println("allocated offsets")

        csv = new(fname, offsets, s, ncols, eol, sep, quot, coltypes, colreaders, cells)
        read_offsets(csv, s)
        println("read offsets")
        csv
    end
end

find_dims(s::ASCIIString, eol, sep, quot) = find_dims(s.data, uint8(eol), uint8(sep), (nothing == quot) ? quot : uint8(quot))
function find_dims(dbuff, eol, sep, quot)
    ncols = 0
    nrows = 0
    inquot = false
    col = 0
    for idx in 1:length(dbuff)
        val = dbuff[idx]
        (val == quot) && (inquot = !inquot)
        inquot && continue
        (val != eol) && (val != sep) && continue
        col += 1
        (val == eol) && (nrows += 1; ncols = max(ncols, col); col = 0)
    end
    (col > 0) && (nrow += 1) 
    ncols = max(ncols, col, 1)
    nrows = max(nrows, 1)
    return (nrows, ncols)
end

function readall_bytes(fname::String, force_ascii::Bool=false)
    open(fname, "r") do f
        readall_bytes(f, force_ascii)
    end
end

function readall_bytes(f::IOStream, force_ascii::Bool=false)
    seekend(f)
    sz = position(f)
    seekstart(f)
    buff = Array(Uint8, sz)
    ret = read(f, buff)
    if(force_ascii)
        for idx in 1:length(ret)
            #println("$idx : $(ret[idx])")
            if(ret[idx] > 127) 
                #println("replacing $(ret[idx])")
                ret[idx] = uint8(' ')
            end
        end
    end
    ret
end

read_offsets(csv, sbuff::ASCIIString) = read_offsets(sbuff.data, uint8(csv.eol), uint8(csv.sep), (nothing == csv.quot) ? nothing : uint8(csv.quot), csv.offsets)
read_offsets(csv, sbuff::UTF8String) = read_offsets(sbuff, csv.eol, csv.sep, csv.quot, csv.offsets)
function read_offsets(dbuff, eol, sep, quot, offsets)
    col = 0
    row = 1
    maxrow,maxcol = size(offsets)
    #println("dims: $(size(offsets))")
    println("type: $(typeof(dbuff))")
    inquot = false
    try
        for idx in 1:length(dbuff)
            val = dbuff[idx]
            (val == quot) && (inquot = !inquot)
            inquot && continue
            (val != eol) && (val != sep) && continue
            col += 1
            #println("row,col: $row $col")
            offsets[row,col] = idx-1
            (row >= maxrow) && (col == maxcol) && break
            (val == eol) && (row += 1; col = 0)
        end
    catch ex
        #println(ex)
        throw("invalid csv format at row $(row), col $(col). $(ex)")
    end
end

function _get_start_pos(csv::CSVFile, row::Int, col::Int)
    (row == 1) && (col == 1) && return 1
    prev_pos_row = (1 == col) ? (row-1) : row
    prev_pos_col = (1 == col) ? csv.ncols : (col-1)
   
    ret = csv.offsets[prev_pos_row, prev_pos_col] 
    (ret == 0) ? _get_start_pos(csv, prev_pos_row, prev_pos_col) : (ret+2)
end

function fillall(csv::CSVFile)
    println("filling up")
    maxrow,maxcol = size(csv.cells)
    tmp64 = Array(Float64,1)
    tmp32 = Array(Float32,1)
    for row in 1:maxrow
        for col in 1:maxcol
            start_pos = _get_start_pos(csv, row, col)
            end_pos = csv.offsets[row,col]
            sval = SubString(csv.sbuff, start_pos, end_pos)
            if(length(csv.colreaders) > 0)
                f = csv.colreaders[col]
                csv.cells[row,col] = f(row, col, sval)
            else
                typ = csv.coltypes[col]
                styp = super(typ)

                if((styp == Signed) || (styp == Unsigned))
                    csv.cells[row,col] = parseint(typ, sval)
                elseif((styp == String) || (styp == Any))
                    csv.cells[row,col] = sval
                elseif((typ == Float64) && float64_isvalid(row[j], tmp64))
                    csv.cells[row,col] = tmp64[1]
                elseif((typ == Float32) && float32_isvalid(row[j], tmp32))
                    csv.cells[row,col] = tmp32[1]
                else
                    error("unknown type $typ")
                end
            end
        end
        if(0 == (row % 10000))
            println("$row of $maxrow")
        end
    end
end

