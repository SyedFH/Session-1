#Task1
#1. Create an m x n matrix with replicate(m, rnorm(n)) with m=10 column vectors of n=10
#elements each, constructed with rnorm(n), which creates random normal numbers.Then we transform it into a 
#dataframe (thus 10 observations of 10 variables) and perform an
#algebraic operation on each element using a nested for loop: at each iteration, every element
#referred by the two indexes is incremented by a sinusoidal function, compare the vectorized and
#non-vectorized form of creating the solution and report the system time differences.#

library(dplyr)
m <- 10
n<- 10
y <- replicate(n,rnorm(n))
class(y)
length(y)   
y

df <- data.frame(y)
for (i in 1:m) {
  for (j in 1:n) {
    df[i,j]
    +10 *sin (0.75*pi)
  }
}
df

#Task 2:
#1. Define matrix mymat by replicating the sequence 1:5 for 4 times and transforming into a
#matrix, sum over rows and columns.#

mymat<- matrix(rep(1:5,4), nrow = 5, ncol = 4)
mymat
class(mymat)
mode(mymat)

#Sum over Rows#
apply(mymat,1,sum)

#Sum Over Column#
apply(mymat,2,sum)
