#Code written by Harsh Bhotika

depress <- read.csv(file.choose(), header = TRUE)
View(depress)
attach(depress)
y= INCOME^(1/2)
View(y)

plot1 <- qqnorm(INCOME , col = "green" , main = "Normal Probability Plot of Income",
                ylab = 'Income')
qqline(INCOME)

plot2 <- qqnorm(y , col = "red" , main = "Normal Probability Plot of Sqrt(Income)",
                ylab = 'Sqrt(Income)')
qqline(y)

histogram1 <- hist(INCOME, main = "Histogram of Income",xlab = "Income" , border = "black" ,
                   col = "green", xlim = c(0,70), ylim = c(0,70))

histogram2 <- hist(y, main = "Histogram of Sqrt(Income)" , xlab = "Sqrt(Income)"
                   , border = "black" , col = "red", ylim = c(0,60), xlim = c(0,10))

par(mfrow=c(1,2))
{
  plot1 <- qqnorm(INCOME , col = "green" , main = "Normal PP of Income", ylab = 'Income' )
  qqline(INCOME)

  plot2 <- qqnorm(y , col = "red" , main = "Normal PP of Sqrt(Income)",ylab = 'Sqrt(Income)' )
  qqline(y)

  histogram1 <- hist(INCOME, main = "Histogram of Income",xlab = "Income" , border = "black" ,
                     col = "green", xlim = c(0,70), ylim = c(0,70))

  histogram2 <- hist(y, main = "Histogram of Sqrt(Income)" , xlab = "Sqrt(Income)"
                     , border = "black" , col = "red", ylim = c(0,60), xlim = c(0,10))
}
