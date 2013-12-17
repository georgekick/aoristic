data(aoristic)
# testing aoristic.df
data.ar <- aoristic.df(data=arlington, DateTimeFrom="DateTimeFrom", DateTimeTo="DateTimeTo")
head(data.ar)
# testing aoristic.all.graph
graph <- aoristic.all.graph(data=data.ar)
ggplot(graph, aes(x=hour, y=freq)) + geom_bar(stat="identity") + ggtitle("Aoristic Graph for the Entire Study Area")

# testing aoristic.spdf
data.spdf <- aoristic.spdf(data=arlington, DateTimeFrom="DateTimeFrom", DateTimeTo="DateTimeTo", lon="lon", lat="lat")

# testing aoristic.grid
aoristic.grid(spdf=data.spdf)

# testing aoristic.density
aoristic.density(spdf=data.spdf)

# testing aoristic.shp
aoristic.shp(spdf=data.spdf, area.shp=CouncilDistrict)