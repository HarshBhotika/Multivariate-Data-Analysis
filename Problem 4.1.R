#Code written by Harsh Bhotika

depress <- read.csv(file.choose(),header = TRUE)
View(depress)
attach(depress)
y= (-1)/(INCOME)^(1/3);
View(y)
depress2 <- merge(depress,y)
View(depress2)
qqnorm(INCOME, col='Green', main = 'Normal Probability plot of Income')
qqline(INCOME)
qqnorm(y, col='Red', main = 'Normal Probability plot of New Variable')
qqline(y)
