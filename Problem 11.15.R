#Code written by Harsh Bhotika

library(MASS)
depression <- read.csv(file.choose(), header = TRUE)
View(depression)
attach(depression)

dataset <- lda(formula = SEX ~ INCOME+CESD, data=depression)
dataset

predictVal <- predict(dataset, depression)
predictVal
classValues <- predictVal$class
classValues
table <- table(classValues, depression$SEX)
table
accuracy <- sum(diag(table)/sum(table))*100
accuracy

dataset <- lda(formula = SEX ~ EDUCAT+EMPLOY+HEALTH+INCOME+CESD, data=depression)
dataset

predictVal <- predict(dataset, depression)
predictVal
classValues <- predictVal$class
classValues
table <- table(classValues, depression$SEX)
table
accuracy <- sum(diag(table)/sum(table))*100
accuracy
