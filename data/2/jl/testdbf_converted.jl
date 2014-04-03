let result = 
(
Any[27.0 8.0 2708.0 "Congressional District 8" "C2" 111.0 "G5200" "False" 7.1546663636e10 1.2416573076e10 47.2400052 -92.9323194
    27.0 5.0 2705.0 "Congressional District 5" "C2" 111.0 "G5200" "False" 3.20220379e8 1.5485125e7 44.9781144 -93.2928317
    27.0 4.0 2704.0 "Congressional District 4" "C2" 111.0 "G5200" "False" 5.10623511e8 5.8464019e7 44.9957711 -93.083523
    27.0 2.0 2702.0 "Congressional District 2" "C2" 111.0 "G5200" "False" 7.826702653e9 3.4012746e8 44.5338366 -93.2513206
    27.0 1.0 2701.0 "Congressional District 1" "C2" 111.0 "G5200" "False" 3.4462275389e10 5.54678308e8 43.8952354 -93.90403
    27.0 6.0 2706.0 "Congressional District 6" "C2" 111.0 "G5200" "False" 7.951908435e9 4.31134882e8 45.3830033 -93.8845885
    27.0 7.0 2707.0 "Congressional District 7" "C2" 111.0 "G5200" "False" 8.2410267758e10 4.987979498e9 46.6966838 -95.6752445
    27.0 3.0 2703.0 "Congressional District 3" "C2" 111.0 "G5200" "False" 1.203647438e9 1.26012269e8 45.021203 -93.5130863],

String["statefp10" "cd111fp" "geoid10" "namelsad10" "lsad10" "cdsessn" "mtfcc10" "funcstat10" "aland10" "awater10" "intptlat10" "intptlon10"])
@assert readcsv("testdbf_converted.csv", has_header=true) == result
end
