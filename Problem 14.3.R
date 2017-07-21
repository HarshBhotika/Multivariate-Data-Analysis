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

Matrix_table <- xtable(cor(Matrix))
View(Matrix_table)

PCA <- prcomp(Matrix_table, scale. = T)
names(PCA)
summary(PCA)

biplot(PCA)
PCA$center

PCA$sdev
PCA$rotation
dim(PCA$x)
st_dev <- PCA$sdev
st_dev
pr_var<- st_dev^2
prop_varex <- pr_var/sum(pr_var)
prop_varex

plot(prop_varex, xlab = "Principal Component",
     ylab = "Proportion of vairance",
     type = "b")

plot(cumsum(prop_varex), xlab = "Principal Component",
     ylab = "Cumulative Proportion of variance",
     type = "b")
