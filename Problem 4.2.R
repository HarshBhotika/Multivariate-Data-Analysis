#Code written by Harsh Bhotika

depress <- read.csv(file.choose(),header = TRUE)
View(depress)
attach(depress)
INCOME2 <- log10(INCOME)
View(INCOME2)

histogram1 <- hist(INCOME, main = "Histogram of Income",xlab = "Income" , border = "black" ,
                   col = "green", xlim = c(0,70), ylim = c(0,70))

histogram2 <- hist(INCOME2, main = "Histogram of Log(Income)" , xlab = "Log(Income)",
                   border = "black" , col = "red", ylim = c(0,60), xlim = c(0,2.0))

plot1 <- qqnorm(INCOME , col = "green" , main = "Normal Probability Plot of Income",
                ylab = 'Income')
qqline(INCOME)

plot2 <- qqnorm(INCOME2 , col = "red" , main = "Normal Probability Plot of log(Income)",
                ylab = 'Log(Income)')
qqline(INCOME2)

  par(mfrow=c(1,2))
  {
  plot1 <- qqnorm(INCOME , col = "green" , main = "Probability Plot of Income", ylab = 'Income' )
  qqline(INCOME)

  plot2 <- qqnorm(INCOME2 , col = "red" , main = "Probability Plot of log(Income)"
                  , ylab = 'Log(Income)' )
  qqline(INCOME2)

  histogram1 <- hist(INCOME, main = "Histogram of Income",xlab = "Income" , border = "black" ,
                     col = "green", xlim = c(0,70), ylim = c(0,70))

  histogram2 <- hist(INCOME2, main = "Histogram of Log(Income)" , xlab = "Log(Income)"
                     , border = "black" , col = "red", ylim = c(0,60), xlim = c(0,2.0))
  }
