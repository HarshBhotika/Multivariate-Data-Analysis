#Code written by Harsh Bhotika

library(MASS)
chemical <- read.csv(file.choose(), header = TRUE)
View(chemical)
attach(chemical)

test1 <- lda(formula = PE ~ DE, data=chemical, prior = c(1,1)/2)
test1

Predict1 <- predict(test1, chemical)
Predict1
class1 <- Predict1$class
table1 <- table(class1, chemical$PE)
table1
accur <- sum(diag(table1)/sum(table1))*100
accur
