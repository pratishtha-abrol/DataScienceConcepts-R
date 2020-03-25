#raw code for linear regression

ols<-function(y,x){
  x<-as.matrix(x)
  x<-cbind(intercept=1,x)
  return(solve(t(x) %*% x) %*% t(x) %*% y)
}

auto <- read.csv("Auto.csv") #load Auto.csv

ols(y=auto$mpg,x=auto)

#using lm (Linear Model) function

linear <- lm(auto$mpg~auto$weight, data=auto)
summary(linear)

#predict output using
#predict(linear, test_data)


#multiple linear regression

auto_mpg <- read.csv("auto_mpg.csv")
summary(auto_mpg)

multiple1 <- lm(auto_mpg$mpg~auto_mpg$cylinders+auto_mpg$displacement, auto_mpg)
multiple2 <- lm(auto_mpg$mpg~., auto_mpg)

summary(multiple1)
summary(multiple2)

#predicted <- predict(multiple2, test_data)