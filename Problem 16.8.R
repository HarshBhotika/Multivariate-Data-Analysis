# Code written by Harsh Bhotika

lung <- read.csv(file.choose(), header = TRUE)
View(lung)

data1 <- data.frame(lung$FFEV1, lung$MFEV1, lung$FFVC, lung$MFVC, lung$OCFEV1, lung$OCFVC)
head(data1)

k<- kmeans(data1,4)
k

table(k$cluster, lung$AREA)
