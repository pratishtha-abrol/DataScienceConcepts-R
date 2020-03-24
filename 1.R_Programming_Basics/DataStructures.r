#vectors

x = c(2,3,4,5,6,7,8,9)
print(x)

#lists

id = c(1,2,3,4)
name_emp = c("Dave", "Ryan", "Shreya", "Lily")
num = 4
emp = list(id, name_emp, num) #can contain objects of different data types
print(emp)
#accessing list components
print(emp$id)
print(emp[[1]]) #prints 1 2 3 4
print(emp[[2]][2]) #prints "Ryan"
#manipulating lists
emp[num] = 5
emp[[1]][5] = 5
emp[[2]][5] = "Mark"
print(emp)
#joining two lists
ages_emp = c(22, 41, 27, 38, 45)
emp = c(emp, ages_emp)
print(emp)

#dataframes : tabular data

vec1 = c(1,2,3)
vec2 = c("R", "Python", "Java")
vec3 = c("learning", "learnt", " yet to learn")
df = data.frame(vec1, vec2, vec3)
print(df)
#create a data frame from a file, say Auto.csv (provided)
auto = read.csv("Auto.csv")
View(auto)
#accessing rows and columns
print(df[1:2,]) #prints first and second row
print(df[,1:2]) #prints first and second column
print(subset(df, vec1>1)) #prints rows with vec1>1
#editing dataframes
df[[2]][2] = "R"
print(df)
edit(df) #opens as a table in a new tab, for manual changes
df = rbind(df, data.frame(vec1=4, vec2="C", vec3="learnt")) #add extra row
df = cbind(df, vec4=c(4, 5, 1, 2)) #add extra column
print(df)
df2 = df[-3,-1] #removes third row and first column
print(df2)
df3 = df[!df$vec1==3] #removes the row where vec1 is 3

#recasting dataframes
#Step 1: melt
library(reshape2)
name = c("Sam", "Dan", "Sam", "Dan")
month = c("Jan", "Jan", "Feb", "Feb")
bs = c(141.2, 135.3, 139.3, 160.1)
bp = c(90, 80, 78, 81)
exp = data.frame(name, month, bs, bp)
print(exp)
exp1 = melt(exp, id.vars = c("name", "month"), measure.vars = c("bs", "bp"))
print(exp1)
#Step 2 : cast
exp2 = dcast(exp1, variable+month ~ name, value.var = "value")
print(exp2)
#in a single step
recast(exp, variable+mont ~ name, id.var=c("name", "month"))

#dplyr package
library(dplyr)
exp2 <- mutate(exp, log_bp = log(bp)) #new variable added
print(exp2)
#used for joining 2 dataframes using operations like left_join(), right_join(), full_join(), semi_join(), inner_join(), anti_join()

#matrices

A = matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, ncol=3, byrow=TRUE)
dim(A) #returns size of matrix
colnames(A) = c("a", "b", "c")
rownames(A) = c("d", "e", "f")