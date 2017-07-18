# Code written by Harsh Bhotika

depress <- read.csv(file.choose(), header = TRUE)
View(depress)
attach(depress)

depress1 <- subset(depress, SEX== "2")
View(depress1)
attach(depress1)

model <- step(lm(CESD~1, depress1), direction='forward', scope=~ AGE+INCOME+EDUCAT)
summary(model)
