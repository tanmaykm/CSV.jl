let result = 
(
Any["dcl" "Downtown Coffee Lounge" "" "In addition to being the only coffee shop in downtown Tyler, DCL also features regular exhibitions of work by local artists." "" "200 West Erwin Street" "Gallery" "" "" "3/30/12" 32.35066 -95.30181
    "tyler-museum" "Tyler Museum of Art" "" "The Tyler Museum of Art on the campus of Tyler Junior College is the largest art museum in Tyler. Visit them online at <a href=\"http://www.tylermuseum.org/\">http://www.tylermuseum.org/</a>." "" "1300 South Mahon Avenue" "Museum" "" "" "4/2/12" 32.33396 -95.28174
    "genecov" "Genecov Sculpture" "" "Stainless Steel Sculpture" "" "1350 Dominion Plaza" "Sculpture" "http://i.imgur.com/DICdn.jpg" "Photo by Justin Edwards. Used with permission." "4/4/12" 32.299076986939205 -95.31571447849274
    "gallery-main-street" "Gallery Main Street" "" "The only dedicated art gallery in Tyler. Visit them online at <a href=\"http://www.heartoftyler.com/downtowntylerarts/\">http://www.heartoftyler.com/downtowntylerarts/</a>." "" "110 West Erwin Street" "Gallery" "" "" "4/9/12" 32.35066 -95.30123
    "spirit-of-progress" "The Spirit of Progress" "" "" "" "100 block of North Spring Avenue" "Relief" "http://media.hacktyler.com/artmap/photos/spirit-of-progress.jpg" "Photo by Christopher Groskopf. Used with permission." "4/11/12" 32.3513 -95.2995
    "celestial-conversations-2" "Celestial Conversations #2" "Simon Saleh" "Steel Sculpture" "" "100 block of North Spring Avenue" "Sculpture" "http://media.hacktyler.com/artmap/photos/celestial-conversations-2.jpg" "Photo by Christopher Groskopf. Used with permission." "4/11/12" 32.351 -95.2995
    "pivot-bounce" "Pivot Bounce" "Chelsea Cope" "" "" "100 block of North Spring Avenue" "Sculpture" "http://i.imgur.com/pmxyi.jpg?1" "Photo by Justin Edwards. Used with permission." "4/11/12" 32.351434 -95.29944
    "children-of-peace" "Children of Peace" "Gary Price" "Cast Bronze" "" "900 South Broadway Avenue" "Sculpture" "http://i.imgur.com/rUikO.jpg" "Photo by Justin Edwards. Used with permission." "4/15/12" 32.339826 -95.300222
    "ross-bears" "Ross' Bears" "" "Granite Sculpture" "" "900 South Broadway Avenue" "Sculpture" "http://i.imgur.com/SpJQI.jpg" "Photo by Justin Edwards. Used with permission." "4/15/12" 32.339776 -95.300034
    "butterfly-garden" "Butterfly Garden" "" "Cast Bronze" "" "" "Sculpture" "http://i.imgur.com/0L8DF.jpg" "Photo by Justin Edwards. Used with permission." "4/15/12" 32.339559 -95.300219
    "goose-fountain" "TJC Goose Fountain" "" "Copper (?) Sculpture" "" "1300 S. Mahon Ave." "Sculpture" "http://i.imgur.com/UWfS6.jpg" "Photo by Justin Edwards. Used with permission." "4/15/12" 32.333944 -95.28263
    "tjc-cement-totems" "" "" "Cast Cement Totems" "" "1300 S. Mahon Ave." "Sculpture" "http://i.imgur.com/lRmYd.jpg" "Photo by Justin Edwards. Used with permission." "4/15/12" 32.333899 -95.283894
    "alison" "Alison" "" "Cast Bronze" "" "900 South Broadway Avenue" "Sculpture" "http://i.imgur.com/7OcrG.jpg" "Photo by Justin Edwards. Used with permission." "4/15/12" 32.339809 -95.299887
    "jackson" "Jackson" "" "Cast Bronze" "" "900 South Broadway Avenue" "Sculpture" "http://i.imgur.com/aQJfv.jpg" "Photo by Justin Edwards. Used with permission." "4/15/12" 32.339828 -95.299939
    "505-third" "Untitled" "" "Stainless Steel" "" "505 Third St." "Sculpture" "http://i.imgur.com/0moUY.jpg" "Photo by Justin Edwards. Used with permission." "4/15/12" 32.333082 -95.305429
    "obeidder" "Obeidder Monster" "" "Sharpie and Spray Paint" "" "3319 Seaton St." "Street Art" "http://i.imgur.com/3aX7E.jpg" "Photo by Justin Edwards. Used with permission." "4/15/12" 32.314431 -95.334619
    "sensor-device" "Sensor Device" "Kurt Dyrhaug" "" "" "University of Texas, Campus Drive" "Sculpture" "http://media.hacktyler.com/artmap/photos/sensor-device.jpg" "Photo by Christopher Groskopf. Used with permission." "4/16/12" 32.317216 -95.250699],

String["slug" "title" "artist" "description" "install_date" "address" "type" "photo_url" "photo_credit" "last_seen_date" "latitude" "longitude"])
@assert readcsv("test_geo.csv", has_header=true) == result
end
