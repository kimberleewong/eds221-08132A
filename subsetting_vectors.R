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

## subsetting rows based on conditions

# cars with five gears
mtcars[mtcars$gear == 5, ]

# cars w/ 5 gears and 4 cylinders
mtcars[mtcars$gear == 5 & mtcars$cyl == 4, ]

# subset function - can also be used for data graphing
subset(mtcars, gear == 5 & cyl == 4)

ggplot(data = subset(mtcars, gear == 5 & cyl == 4),
       aes(x = mpg, y = disp)) +
         geom_point()

## removing columns from data frame
# set to null
df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
df
df$z <- NULL
df

# subset to return only columns u want by name
df[c("x","y")]

# or write out what u dont want
df[setdiff(names(df), "z")]


