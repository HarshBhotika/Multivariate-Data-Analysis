#Code written by Harsh Bhotika

depress <- read.csv(file.choose(), header = TRUE)
View(depress)
attach(depress)
plot(EMPLOY,INCOME, main="Scatterplot",
     xlab="Employment Status ", ylab="Income in Thousand Dollars ", pch=1 , col='Red')
