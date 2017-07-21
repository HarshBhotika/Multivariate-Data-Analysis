# Code written by Harsh Bhotika

chemical <- read.csv(file.choose(), header = TRUE)

PCA <- princomp(~ROR5+DE+SALESGR5+EPS5+NPM1+PAYOUTR1, cor=TRUE,scores=TRUE, data = chemical)
names(PCA)
summary(PCA)

PCAValue<-PCA$scores
PCAValue

PCA_data<- cbind(chemical$PE,PCAValue)
PCA_data

colnames(PCA_data)[1]<- "PE"
dataframe<- data.frame(PCA_data)
dataframe


PE1= step(lm(PE~1, dataframe), direction = 'forward', scope=~ Comp.1 + Comp.2 +
            Comp.3 + Comp.4 + Comp.5 + Comp.6)
summary(PE1)

PE2= step(lm(PE~1, chemical), direction='forward', scope=~ ROR5+DE+SALESGR5+EPS5+NPM1+PAYOUTR1)
summary(PE2)
