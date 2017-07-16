# Code written by Harsh Bhotika

lung <- read.csv(file.choose(), header = TRUE)
View(lung)
attach(lung)
model <- (lm(MFVC~MAGE+MHEIGHT))
summary(model)

plot(MAGE,MFVC, col='Red', pch=20, main='Age vs MFVC for Mothers')
abline(lm(MFVC~MAGE))
plot(MHEIGHT,MFVC, col='Blue', pch=20, main = 'Height vs MFVC for Mothers')
abline(lm(MFVC~MHEIGHT))

plot(model)

cor(MFVC,MAGE)
cor(MFVC,MHEIGHT)
