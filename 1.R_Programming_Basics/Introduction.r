#basic operators

4 + 3 #addition operator
7 * 8 #multiplication operator
44 / 5 #division operator
17 - 3 #subtraction operator
44 %% 5 #remainder operator
44 %/% 5 #integer division
2 ^ 4 #exponent operator
2 ** 4 #exponent operator

#logical operators

2 > 3 #greater than
2 < 3 #less than
2 >= 3 #greater than or equal to
2 <= 3 #less than or equal to
2 == 3 #is equal to
!2 #not
2 != 3 #not equal to

#assignment operator and devlaring variables

a = 4 # only works in R studio
b <- a*8
c <- c(a,b)

#functions

print(a)
print(c)
save(list=ls(all.names=TRUE), file='intro.Rdata') #save a full workspace in R studio with name intro
save.image() #shortcut function to save whole workspace
load(file='intro.Rdata') #to load a saved workspace

#to find data type of a variable
typeof(a)
#verify if object is of certain data type : is.data_type(object)
is.integer(a)
is.numeric(a)
is.complex(a)
is.logical(a)
is.character(a)
#convert one data type into another : as.data_type(object)
as.integer(a)