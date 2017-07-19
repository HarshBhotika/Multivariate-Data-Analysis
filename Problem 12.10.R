# Code written by Harsh Bhotika

depress <- read.csv(file.choose(), header = TRUE)
View(depress)

logistic <- glm(formula = ACUTEILL ~ AGE + EDUCAT + INCOME + CESD + DRINK,
                      family = 'binomial', data = depress)
backward_aic_model <- step(logistic, direction = "backward", trace = 1)
logistic

