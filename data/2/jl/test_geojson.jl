let result = 
(
Any["" "value0" "" "{\"type\": \"Point\", \"coordinates\": [102.0, 0.5]}"
    "" "value0" 0.0 "{\"type\": \"LineString\", \"coordinates\": [[102.0, 0.0], [103.0, 1.0], [104.0, 0.0], [105.0, 1.0]]}"
    "" "value0" "{u'this': u'that'}" "{\"type\": \"Polygon\", \"coordinates\": [[[100.0, 0.0], [101.0, 0.0], [101.0, 1.0], [100.0, 1.0], [100.0, 0.0]]]}"],

String["id" "prop0" "prop1" "geojson"])
@assert readcsv("test_geojson.csv", has_header=true) == result
end
