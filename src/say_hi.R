# this function takes one argument, `x`, appends the value of that argument to
# a greeting, and then prints the whole greeting
say_hi <- function(x) {
  hi <- paste("Greetings, ", x, "!", sep = "")
  return(hi)
}

name1 <- "Rick Grimes" #passing the name Rick Grimes to the variable name1
say_hi(name1) #passing name1 to our say hi function


