#Code written by Harsh Bhotika

library(MASS)
require(ggplot2)
require(scales)
require(gridExtra)

chemical <- read.csv(file.choose(), header = TRUE)
View(chemical)
attach(chemical)

test1 <- lda(formula = PE ~ ., data=chemical, prior = c(1,1)/2)
test1

predict1 <- predict(test1, chemical)
predict1
class1 <- predict1$class
plot(class1)
table1 <- table(class1, chemical$PE)
table1
accuracy <- sum(diag(table1)/sum(table1))*100
accuracy

chemical1 <- read.csv(file.choose(), header = TRUE)
cov(chemical1)
meanvalue <- colMeans(chemical1)
mahalanobis(chemical1, meanvalue, cov(chemical1))
