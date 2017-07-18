# Code written by Harsh Bhotika

chemical <- read.csv(file.choose(), header = TRUE)
View(chemical)
attach(chemical)

rootPE <- sqrt(PE)
View(rootPE)

step(lm(PE~1, chemical), direction='both', scope=~ ROR5+DE+SALESGR5+EPS5+NPM1+PAYOUTR1)
step(lm(rootPE~1, chemical), direction='both', scope=~ ROR5+DE+SALESGR5+EPS5+NPM1+PAYOUTR1)

hist(PE, col = 'Green')
hist(rootPE, col = 'Red')
