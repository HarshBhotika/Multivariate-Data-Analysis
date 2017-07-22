# Code written by Harsh Bhotika

lung <- read.csv(file.choose(), header = TRUE)
View(lung)

data1 <- data.frame(lung$FFEV1, lung$MFEV1, lung$FFVC, lung$MFVC, lung$OCFEV1, lung$OCFVC)
head(data1)

clusters <- hclust(dist(data1))
plot(clusters)

divideclusters <- cutree(clusters, 4)
plot(divideclusters)
table(divideclusters, lung$AREA)
