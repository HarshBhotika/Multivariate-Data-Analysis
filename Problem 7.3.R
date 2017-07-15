# Code written by Harsh Bhotika

lung <- read.csv(file.choose(), header = TRUE)
View(lung)
attach(lung)
model <- (lm(FFVC~FAGE+FHEIGHT))
summary(model)

plot(FAGE,FFVC, col='Red', pch=20, main='Age vs FFVC for Fathers')
abline(lm(FFVC~FAGE))

plot(FHEIGHT,FFVC, col='Blue', pch=20, main = 'Height vs FFVC for Fathers')
abline(lm(FFVC~FHEIGHT))

plot(model)

cor(FFVC,FAGE)
cor(FFVC,FHEIGHT)
