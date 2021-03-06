data <- read.table('clipboard',header=T,sep="\t")
install.packages(c('maptools','raster'))
library(maptools)
library(raster)
adm <- getData('GADM', country='China', level=3)
mar<- adm[adm$NAME_3=="Shouguang",]
adm <- getData('SRTM', lon=118, lat=37)
plot(adm)
points(data$E,data$N,pch=19)
plot(mar, axes=T,xlim=c(118.6,119),ylim=c(37.1,37.3),add=T)

# China maps

adm0 <- getData('GADM', country='China', level=1)
adm1 <- getData('GADM', country='Taiwan', level=0)
adm2 <- getData('GADM', country='Hong kong', level=0)
adm3 <- getData('GADM', country='Macao', level=0)
plot(adm0)
plot(adm1, add = T)
plot(adm2, add = T)
plot(adm3, add = T)

