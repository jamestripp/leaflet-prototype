library(leaflet)
rand_lng = function(n = 10) rnorm(n, -93.65, .01)
rand_lat = function(n = 10) rnorm(n, 42.0285, .01)
m = leaflet() %>% addTiles() %>% addCircles(rand_lng(50), rand_lat(50), radius = runif(50, 10, 200))
m
library(htmlwidgets)
saveWidget(m, file="docs/mymap.html")