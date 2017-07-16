# Code written by Harsh Bhotika

depress <- read.csv(file.choose(), header = TRUE)
View(depress)
attach(depress)
model <- (lm(CESD~INCOME+AGE+SEX))
summary(model)

plot(model)

cor(CESD,INCOME)
cor(CESD,AGE)
cor(CESD,SEX)
# plotting each independent var with dep just for reference

plot(INCOME,CESD, col='Red', pch=20, main = 'CESD vs Income')
abline(lm(CESD~INCOME))
plot(AGE,CESD, col='Blue', pch=20, main = 'CESD vs Age')
abline(lm(CESD~AGE))
plot(SEX,CESD, col='Green', pch=20, main = 'CESD vs Sex')
abline(lm(CESD~SEX))


