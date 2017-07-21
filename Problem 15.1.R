# Code written by Harsh Bhotika

depress <- read.csv(file.choose(), header = TRUE)
View(depress)
attach(depress)

install.packages("psych")
library(psych)

data1 <- depress[,c(9:28)]
data1

data_frame <- data.frame(data1)
data_frame

pc <- princomp(data_frame, cor=TRUE)
pc
summary(pc)

varimax <- principal(data_frame, nfactors=4, rotate="varimax")
varimax

oblique <- principal(data_frame, nfactors=4, rotate="promax")
oblique
