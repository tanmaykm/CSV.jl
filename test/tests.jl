using CSV

function testreader(row, col, sval)
    if((col == 1) || (col == 2))
        try
            return parseint(sval)
        end
        return 0
    end
    return sval
end

csv = readcsv2("testdata.csv", colreaders=(testreader))

