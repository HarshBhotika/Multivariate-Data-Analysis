# Code written by Harsh Bhotika

set.seed(36541)
X1<-rnorm(100, mean = 0, sd = 1)
X1 <- 5*X1
X1

set.seed(43893)
X2<-rnorm(100, mean = 0, sd = 1)
X2 = 3*X2
X2

set.seed(45671)
X3<-rnorm(100, mean = 0, sd = 1)
X3 = X1 + X2 + 4*X3
X3

set.seed(65431)
X4<-rnorm(100, mean = 0, sd = 1)
X4 = X4
X4

set.seed(98753)
X5<-rnorm(100, mean = 0, sd = 1)
X5 = 4*X5
X5

set.seed(78965)
X6<-rnorm(100, mean = 0, sd = 1)
X6 = X5 - X4 + 6*X6
X6

set.seed(67893)
X7<-rnorm(100, mean = 0, sd = 1)
X7 = 2*X7
X7

set.seed(34521)
X8<-rnorm(100, mean = 0, sd = 1)
X8 = X7 + 2*X8
X8

set.seed(98431)
X9<-rnorm(100, mean = 0, sd = 1)
X9 = 4*X9
X9

set.seed(67895)
Y<-rnorm(100, mean = 0, sd = 1)
Y = 5 + X1 + 2*X2 + X3 + 100*Y
Y

install.packages("xtable")
library("xtable")

Matrix=cbind(X1,X2,X3,X4,X5,X6,X7,X8,X9)
cor(Matrix)
dataframe<- data.frame(Matrix)
dataframe

PCA <- princomp(~X1+X2+X3+X4+X5+X6+X7+X8+X9,data=dataframe,cor=TRUE,scores=TRUE)
PCA
PCA_values<-PCA$scores
PCA_values
bind<- cbind(Y,PCA_values)
bind
dataframe1 <- data.frame(bind)
dataframe1

regression_pca<- lm(Y~.,data=dataframe1)
regression_pca
summary(regression_pca)

regression_normal<- lm(Y~X1+X2+X3+X4+X5+X6+X7+X8+X9, data = dataframe)
regression_normal
summary(regression_normal)
