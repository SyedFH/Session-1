#Session 1 Assignment#

Task 1

#Q1: How many ways are there to call a function ?
  
Ans: There are 3 ways of calling  function.

      a. Calling a function without an argument
      b. Calling a function with argument values
      c. Calling Function with defaut argument

Q2: What is the recycling of element in a vector?
  
Ans: If there are 2 vectors of different lenths & an arethmatic operation is run. the elements of vector with lower lenth is
repeted.

Q3. Give example of recycling of elements?
  
Ans: 
x <- c(1:10)

length(x)
x
y<- c(1:5)
length(y)
y

x+y

#[1]  2  4  6  8 10  7  9 11 13 15#

Task 2.

1. What should be the output of the following Script?
  v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v%/%t)

Ans: 0 1 1

2. You have 25 excel files with names as xx_1.xlsx, xx_2.xlsx,........xx_25.xlsx in a dir.
Write a program to extract the contents of each excel sheet and make it one df.

#Ans:#

library(openxlsx)

df_T <- data.frame()

Files_read <- list.files(pattern = ".xlsx")

Files_read

for (i in 1:length(Files_read)) {
  
  file_name = Files_read[i]
  data = read.xlsx  (file_name,sheet = "Sheet1")
  
  df_T = rbind(df_T,data)
  
}

print(df_T)