train = read.csv("Titanic_Train.csv")
test = read.csv("Titanic_Test.csv")

summary(train)
summary(test)

#using Generalised Linear Model function

mod1 <- glm(train$Sex~., train, family="binomial")
summary(mod1)

#prediction as

predicted <- predict(mod1, test)