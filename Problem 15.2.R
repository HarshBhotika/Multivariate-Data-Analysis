# Code written by Harsh Bhotika

depress <- read.csv(file.choose(), header = TRUE)
View(depress)
attach(depress)

install.packages("psych")
library(psych)
install.packages("psy")
library(psy)

bind <- depress[,c("C1", "C2", "C3","C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "C12", "C13"
                   , "C14", "C15", "C16", "C17", "C18", "C19", "C20")]
bind
dataframe <- data.frame(bind)
dataframe
View(dataframe)
factor1<- factanal(dataframe,factor=4, rotation = "varimax")
factor1
factor2<- factanal(dataframe,factor=4, rotation = "promax")
factor2
scree.plot(factor1$correlations)
