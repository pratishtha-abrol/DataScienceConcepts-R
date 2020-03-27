library(knn)
x <- cbind(x_train,y_train)
# Fitting model
fit <-knn(y_train ~ ., data = x,k=5)
summary(fit)
# Predict Output 
predicted= predict(fit,x_test)

#OR#

library(caret)
library(class)
train <- read.csv("File_name")
test <- read.csv("File_name")
str(train)
str(test)
fit <- knn(train=train[,-lastcol], test=test[,-lastcol],cl=train$y k=3)
fit
matrix = table(fit, test)
accuracy = sum(diag(matrix))/nrow(test)
accuracy

confusion_matrix <- confusionMatrix(data = fit, test$y)
confusion_matrix