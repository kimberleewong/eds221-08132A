## atomic vectors and subsetting 
x <- c(2.1, 4.2, 3.3, 5.4)

x[c(3,1)]
x[order(x)]

#duplicate indices will duplicate values
x[c(1,1)]

#real numbers are silently truncated to integers
x[c(2.1,2.9)]

#negative integers exclue elements at specific positions
x[-c(3,1)]

#you can't mix positives and negatives
x[c(-3,1)]

#logical vectors
x[c(TRUE, TRUE, FALSE, FALSE)]
x[c(x > 3)]

# equivalent to true, false, true, false - R made some choices
x[c(TRUE, FALSE)]

# can put in NA
x[c(TRUE, TRUE, NA, FALSE)]

# nothing returns orig vector
x[]

# zero returns 0 length vector
x[0]



## Subsetting and Assignment
x <- 1:5
x[c(1,2)] <- 2:3
x

x[-1] <- 4:1
x

x[c(1, NA)] <- c(1,2)
x[c(T, F, NA)] <- 1
x

df <- data.frame(a = c(1, 10, NA))
df$a[df$a < 5] <- 0
df$a
