# Code written by Harsh Bhotika

depress <- read.csv(file.choose(), header = TRUE)
View(depress)

data1<- data.frame(depress$AGE,depress$EDUCAT,depress$INCOME)
data1

k<-kmeans(data1,2)
k

table(k$cluster,depress$CESD)
table(k$cluster,depress$CASES)
table(k$cluster,depress$SEX)

hc<-hclust(dist(data1))
hc
plot(hc)

clusterhc <- cutree(hc, 2)
clusterhc

plot(clusterhc)
table(clusterhc,depress$CESD)

table(clusterhc,depress$CASES)
table(clusterhc,depress$SEX)
