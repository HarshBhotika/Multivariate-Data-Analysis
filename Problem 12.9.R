# Code written by Harsh Bhotika

depress <- read.csv(file.choose(), header = TRUE)
View(depress)

Men_depress <- subset(depress, SEX == "1")
View(Men_depress)

Women_depress <- subset(depress, SEX == "2")
View(Women_depress)

Men_drink <- subset(Men_depress, DRINK == "1")
View(Men_drink)
Women_drink <- subset(Women_depress, DRINK == "1")
View(Women_drink)

isdepressed<- subset(depress, CASES == "1")
notdepressed <- subset(depress, CASES == "0")

men_yes <- subset(isdepressed, SEX == "1")
women_yes <- subset(notdepressed, SEX == "2")

Men_drink_yes <- subset(men_yes, DRINK == "1")
Women_drink_yes <- subset(women_yes, DRINK == "1")

men_notdepress <- subset(notdepressed, SEX == "1")
women_notdepress <- subset(notdepressed, SEX == "2")

men_notdepressed_drink <- subset(men_notdepress, DRINK == "1")
women_notdepressed_drink <- subset(women_notdepress, DRINK == "1")

depress['Drink_New'] <- ifelse(depress$DRINK == 1, 1, 0)

logistic <- glm(formula = Drink_New ~ CESD + SEX + CESD*SEX, family = 'binomial', data = depress)
logistic
View(logistic)
summary(logistic)
