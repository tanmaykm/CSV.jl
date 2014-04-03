julia -e 'println("let result = "); println(readcsv("bad.csv", has_header=true)); println("@assert readcsv(\"bad.csv\", has_header=true) == result"); println("end")' > ../jl/bad.jl
julia -e 'println("let result = "); println(readcsv("dummy.csv", has_header=true)); println("@assert readcsv(\"dummy.csv\", has_header=true) == result"); println("end")' > ../jl/dummy.jl
julia -e 'println("let result = "); println(readcsv("dummy2.csv", has_header=true)); println("@assert readcsv(\"dummy2.csv\", has_header=true) == result"); println("end")' > ../jl/dummy2.jl
julia -e 'println("let result = "); println(readcsv("dummy3.csv", has_header=true)); println("@assert readcsv(\"dummy3.csv\", has_header=true) == result"); println("end")' > ../jl/dummy3.jl
julia -e 'println("let result = "); println(readcsv("join_a.csv", has_header=true)); println("@assert readcsv(\"join_a.csv\", has_header=true) == result"); println("end")' > ../jl/join_a.jl
julia -e 'println("let result = "); println(readcsv("join_b.csv", has_header=true)); println("@assert readcsv(\"join_b.csv\", has_header=true) == result"); println("end")' > ../jl/join_b.jl
julia -e 'println("let result = "); println(readcsv("mac_newlines.csv", has_header=true)); println("@assert readcsv(\"mac_newlines.csv\", has_header=true) == result"); println("end")' > ../jl/mac_newlines.jl
julia -e 'println("let result = "); println(readcsv("no_header_row.csv", has_header=false)); println("@assert readcsv(\"no_header_row.csv\", has_header=false) == result"); println("end")' > ../jl/no_header_row.jl
julia -e 'println("let result = "); println(readcsv("no_header_row2.csv", has_header=false)); println("@assert readcsv(\"no_header_row2.csv\", has_header=false) == result"); println("end")' > ../jl/no_header_row2.jl
julia -e 'println("let result = "); println(readcsv("no_header_row3.csv", has_header=false)); println("@assert readcsv(\"no_header_row3.csv\", has_header=false) == result"); println("end")' > ../jl/no_header_row3.jl
julia -e 'println("let result = "); println(readcsv("sheetsxls_converted.csv", has_header=true)); println("@assert readcsv(\"sheetsxls_converted.csv\", has_header=true) == result"); println("end")' > ../jl/sheetsxls_converted.jl
julia -e 'println("let result = "); println(readcsv("sheetsxlsx_converted.csv", has_header=true)); println("@assert readcsv(\"sheetsxlsx_converted.csv\", has_header=true) == result"); println("end")' > ../jl/sheetsxlsx_converted.jl
julia -e 'println("let result = "); println(readcsv("test.jl", has_header=true)); println("@assert readcsv(\"test.jl\", has_header=true) == result"); println("end")' > ../jl/test.jl
julia -e 'println("let result = "); println(readcsv("test_geo.csv", has_header=true)); println("@assert readcsv(\"test_geo.csv\", has_header=true) == result"); println("end")' > ../jl/test_geo.jl
julia -e 'println("let result = "); println(readcsv("test_geojson.csv", has_header=true)); println("@assert readcsv(\"test_geojson.csv\", has_header=true) == result"); println("end")' > ../jl/test_geojson.jl
julia -e 'println("let result = "); println(readcsv("test_latin1.csv", has_header=true)); println("@assert readcsv(\"test_latin1.csv\", has_header=true) == result"); println("end")' > ../jl/test_latin1.jl
julia -e 'println("let result = "); println(readcsv("test_literal_order.csv", has_header=true)); println("@assert readcsv(\"test_literal_order.csv\", has_header=true) == result"); println("end")' > ../jl/test_literal_order.jl
julia -e 'println("let result = "); println(readcsv("test_utf16_big.csv", has_header=true)); println("@assert readcsv(\"test_utf16_big.csv\", has_header=true) == result"); println("end")' > ../jl/test_utf16_big.jl
julia -e 'println("let result = "); println(readcsv("test_utf16_little.csv", has_header=true)); println("@assert readcsv(\"test_utf16_little.csv\", has_header=true) == result"); println("end")' > ../jl/test_utf16_little.jl
julia -e 'println("let result = "); println(readcsv("test_utf8.csv", has_header=true)); println("@assert readcsv(\"test_utf8.csv\", has_header=true) == result"); println("end")' > ../jl/test_utf8.jl
julia -e 'println("let result = "); println(readcsv("testdbf_converted.csv", has_header=true)); println("@assert readcsv(\"testdbf_converted.csv\", has_header=true) == result"); println("end")' > ../jl/testdbf_converted.jl
julia -e 'println("let result = "); println(readcsv("testfixed_converted.csv", has_header=true)); println("@assert readcsv(\"testfixed_converted.csv\", has_header=true) == result"); println("end")' > ../jl/testfixed_converted.jl
julia -e 'println("let result = "); println(readcsv("testfixed_schema.csv", has_header=true)); println("@assert readcsv(\"testfixed_schema.csv\", has_header=true) == result"); println("end")' > ../jl/testfixed_schema.jl
julia -e 'println("let result = "); println(readcsv("testxls_converted.csv", has_header=true)); println("@assert readcsv(\"testxls_converted.csv\", has_header=true) == result"); println("end")' > ../jl/testxls_converted.jl
julia -e 'println("let result = "); println(readcsv("testxlsx_converted.csv", has_header=true)); println("@assert readcsv(\"testxlsx_converted.csv\", has_header=true) == result"); println("end")' > ../jl/testxlsx_converted.jl