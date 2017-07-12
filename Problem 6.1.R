# Code written by Harsh Bhotika

chemical <- read.table(file.choose(), header = FALSE)
View(chemical)
attach(chemical)

#Generating the plot and the regression line

plot(V4,V5 , main = 'Growth rate of sales vs Earnings per sales share',
     xlab = 'Growth rate of sales', ylab = 'Earnings per sales share', col='Blue' )
abline(lm(V5~V4))
model <- (lm(V5~V4))
summary(model)

# Calculating the Correlation

cor(V4,V5)
cor.test(V4,V5)
