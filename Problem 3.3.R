#Code written by Harsh Bhotika

depress <- read.table(file.choose(), header = FALSE)
View(depress)
attach(depress)
plot(V6,V7, main="Scatterplot",
     xlab="Employment Status ", ylab="Income in Thousand Dollars ", pch=1 , col='Red')
