# Code written by Harsh Bhotika

lung <- read.csv(file.choose(), header = TRUE)
View(lung)

lung['Father_Group'] <- ifelse(lung$FFEV1 <= 409, 0, 1)
View(lung)

logistic <- glm(formula = Father_Group ~ FHEIGHT + FWEIGHT + FAGE + FFVC, family = 'binomial', data = lung)
logistic
summary(logistic)
