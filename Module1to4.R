1.4 CHALLENGE

evaluating expressions
8+5
10-6/2
(10-6)/2
10*5
15/5
10^5
3*pi

assignments
x <- 6
y <- 5
z <- x*y
x2 <- x^2

built-in functions
x <- 10
log(x)
factorial(x)
y <- 81
sqrt(y)
z <- -8.349218
?round
round(z, digits = 3)
?abs
abs(z*y)

use ls() command
ls()

use rm(list=ls()) command
rm(list=ls())

checking classes
class(globalenv())

you can create vectors, a vector is a data structure that represents a sequence(
a one-dimensional array and can contain numbers, characters, or logical values
you create with c()
you index with []

x <- c(15, 16, 12, 3, 21, 45, 23)
class(x)

y <- c("once", "upon", "a", "time")
class(y)

x <- c("2", 2, "zombies")
class(x)

coercing vectors
x <- c(3, 4, 5, 6, 7)
x
class(x)

y <- as.character(x) #changes your numneric x vector to a character vector
class(y)

we can also create vector using the sequence operator : this is basically a through 
example 1:10 is 1 through 10
x <- 1:10
x

we can go in reverse order
x <- 10:1
x

we can do decimals
x <- 1.3:10.5
x

if you add parantheses then you do not have to repeat the variable after, it will print on commandArgs()
(x<-40:45)

you can make more complex sequences using the seq() function
x <- seq(from = 1, to = 10, by = 2) #will create a sequence from 1 through 10 and skip every other value
x

you can create evenly spaced values
x <- seq(from = 1, to = 10, length.out = 3) #creates 3 evenly spaced values
x

ATTRIBUTES AND STRUCTURES
length(x)

attr(x, "date collected") <- "2019-01-22"
attr(x, "collected by") <- "Anthony Di Fiore"
attributes(x) #returns list of attributes of x

class(attributes(x))

attr(x, "date collected")

str(x)
str(mean)
?str()

str(attributes(x))

(x<-15:28)
(y<-1:4)
(x+y)

x <- 15:18
y <- 1:4
(x + y)

x <- 15:28
y <- 1:4

z <- x+y
z

y <- 2

z<-x+y
z
z <- x*y
z

x <- 1:20
x
(logx <- log(x))

(x2 <- x^2)
(y <- 4*x+3)

QUICK VISUALIZATIONS
plot(x, logx, type="o") #plot() takes the value of x and y values and "o" adds the o on line
plot(x, x2, type="o")
plot(x, y, type="o")

CHALLENGE
?rnorm

s <- rnorm(n = 10, mean = 80, sd = 10)
s
hist(s)

s <- rnorm(n=100, mean = 80, sd=10)
hist(s)

s <- rnorm(n=1000, mean = 80, sd=10)
hist(s)

s <- rnorm(n=10000, mean = 80, sd=10)
hist(s)

mean(s)
sd(s)

SCRIPTS AND FUNCTIONS
x <- 1:10
s <- sum(x)
l <- length(x)
m <- s/l
print(m)

getwd()
scripts in R are text files tat store an ordered list of commands
they can be used together to perform complete analyses and show results

the above lines are saved as a script and i can just run it:
source("src/my_script.R")

a function can help organize portions of your code within a script

source("src/say_hi.R")
name2 <- "Charles Darwin"
say_hi(name2)

