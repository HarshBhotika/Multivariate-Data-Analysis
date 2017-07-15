# Code written by Harsh Bhotika

lung <- read.table(file.choose(), header = FALSE)
View(lung)
attach(lung)

a <- log(V5) # Log of Height for fathers
b <- log(V6) # Log of Weight for fathers
c <- log(V11) # Log of Height for mothers
d <- log(V12) # Log of Weight for mothers
View(a)
View(b)
View(c)
View(d)

plot(a,b , main = 'Logarithmic Height vs Weight for Fathers',
     xlab = 'log(Height)', ylab = 'log(Weight)', col='Blue')
abline(lm(b~a))
model <- (lm(b~a))
summary(model)

plot(c,d , main = 'Logarithmic Height vs Weight for Mothers',
     xlab = 'log(Height)', ylab = 'log(Weight)', col='Red')
abline(lm(d~c))
model1 <- (lm(d~c))
summary(model1)

corlogfather <- cor(a,b)
corlogmother<- cor(c,d)
corlogfather
corlogmother

hist(V6, main = 'Histogram of Weight for Fathers', xlab = 'Weight of Fathers', col = 'Blue')
hist(b, main = 'Histogram of log(Weight) for Fathers', xlab = 'log(Weight) of Fathers', col = 'Blue')
hist(V12, main = 'Histogram of Weight for Mothers', xlab = 'Weight of Mothers', col = 'Red')
hist(d, main = 'Histogram of log(Weight) for Mothers', xlab = 'log(Weight) of Mothers', col = 'Red')

qqnorm(V6, main = 'Probability plot of Weight of Fathers', xlab = 'Weight of Fathers', col='Blue')
qqline(V6)
qqnorm(b, main = 'Probability plot of log(Weight) of Fathers', xlab = 'log(Weight) of Fathers', col='Blue')
qqline(b)
qqnorm(V12, main = 'Probability plot of Weight of Mothers', xlab = 'Weight of Mothers', col='Red')
qqline(V12)
qqnorm(d, main = 'Probability plot of log(Weight) of Mothers', xlab = 'log(Weight) of Mothers', col='Red')
qqline(d)
