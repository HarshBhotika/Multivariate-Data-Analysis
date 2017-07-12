# Code written by Harsh Bhotika

lung <- read.table(file.choose(), header = FALSE)
View(lung)
attach(lung)

plot(V5,V6 , main = 'Height vs Weight for Fathers',
     xlab = 'Height', ylab = 'Weight', col='Blue')
abline(lm(V6~V5))
model <- (lm(V6~V5))
summary(model)

plot(V11,V12 , main = 'Height vs Weight for Mothers',
     xlab = 'Height', ylab = 'Weight', col='Red')
abline(lm(V12~V11))
model1 <- (lm(V12~V11))
summary(model1)

corfather <- cor(V5,V6)
cormother <- cor(V11,V12)
corfather
cormother

lung1 <- read.table(file.choose(), header = FALSE)
View(lung1)
attach(lung1)
abline(lm(V12~V11))
model2 <- (lm(V12~V11))
summary(model2)

