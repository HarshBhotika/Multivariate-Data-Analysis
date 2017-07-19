# Code written by Harsh Bhotika

depress <- read.csv(file.choose(), header = TRUE)

stepreg=glm(CHRONILL~1,data=depress,family=binomial)
stepreg1=glm(CHRONILL~AGE+EDUCAT+INCOME+CASES+DRINK,data=depress,family=binomial)
backwards=step(stepreg,scope=formula(stepreg1),direction='forward',k=2)

test<- c(34,3,20,0,1)
names<- c("AGE", "EDUCAT", "INCOME", "CASES", "DRINK")
dataframe<-data.frame(row.names = names,test)
dataframe<-as.data.frame(t(dataframe))
out<-predict(backwards,dataframe, type="response")
out

library(class)
KNN<- depress[,c("AGE", "EDUCAT", "INCOME", "CASES", "DRINK","CHRONILL")]
KNN_Predict<-knn(KNN[,-6],test,k=3,cl = KNN[,6])
KNN_Predict

library(rpart)
dataframecart<- depress[,c("AGE", "EDUCAT", "INCOME", "CASES", "DRINK","CHRONILL")]
train <- rpart(CHRONILL~AGE+EDUCAT+INCOME+CASES+DRINK, data = dataframecart, method = 'class')
test<- c(34,3,20,0,1,NA)
names<- c("AGE", "EDUCAT", "INCOME", "CASES", "DRINK","CHRONILL")
testcart<-data.frame(row.names = names,test)
testcart<-as.data.frame(t(testcart))
train_full<- rbind(dataframecart,testcart)
predict(train, train_full[295,1:5], type = 'class')

install.packages("e1071")
library(e1071)
model <- naiveBayes(as.factor(CHRONILL) ~ ., data = dataframecart)
NB<-predict(model,train_full[295,1:5])
NB
