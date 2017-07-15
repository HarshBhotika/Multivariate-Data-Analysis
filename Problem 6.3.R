# Code written by Harsh Bhotika

nyse <- read.table(file.choose(), header = TRUE)
View(nyse)
attach(nyse)

plot(Index,Volume , main = 'Price Index vs Volune',
     xlab = 'Price Index', ylab = 'Volune')
abline(lm(Volume~Index))
model <- (lm(Volume~Index))
summary(model)
