#FUNDAMENTALS OF R LANGUAGE

getwd()

install.packages("tidyverse") #downloads and installs package tidyverse

#both of the following do the same:
library(tidyverse) #pulls package into global environment so you can access functions
require(tidyverse) #pulls package into global environment so you can access functions

#Everything in R is an object (variables, functions, environments)
x<-4
x

x<-mean
x

mean(c(1,2,3,4))
x(c(1,2,3,4))

#Objects have a class, mode, and a type
class(x)
mode(x)
typeof(x)

#fundamental data structures and their attributes and organization - vector/array/matrix
x <- c(1,2,3,4) #creating a vector of 4 numbers using the c or concatenate function
mode(x)
typeof(x)
x

x <- c(1,2,"a",4) 
typeof(x) #the type is now a character b/c a number can be a character but a character
#cannot be a number. so when asked what the type of the vector is, it will take that of "a"

#LOGICAL OR BOOLEAN
x <- TRUE
mode(x)
class(x)

x <- c(1,2,"a",TRUE) #array that contains numerical, character, and Boolean
#FORCED to be character because that is the biggest class, they can all fall under
class(x)

#CLASS EXCERCISE - DATA MANIPULATION
f <- file.choose() #a file I have chosen and assigned to the variable f
f
d <- read_csv(f, col_names = TRUE) #reading the csv file and passing to the variable d
d

d["Genus"] #extracting column genus from data, still as tabular data
d[c("Genus", "Fauna")] #you can pull multiple columns at once
d$Genus #pulls out column as well without quotations as a vector, a list
d[,3] #pulling out the third column
d[3,] #pulling out the third row

#looking at the data
class(d) #class of the dataset
str(d) #types of class for all the data, type assignmnets when data gets pulled in
glimpse(d) 
head(d) #first lines of data
tail(d) #last rows of data
head(d, 100) #first 100 rows of data
View(head(d, 100))

#new variable from one field dataset
gs <- d$MeanGroupSize #extracts mean group size as a vector, pulls out column using the $
gs
class(gs)
head(gs)
str(gs)

gs <- d[, "MeanGroupSize"] #dataframe d and pulling out an unspecified (all) rows and named column
gs
class(gs)

gs+1 #adding 1 to each element
mean(gs) #will give you something undefined because we have NA variables in the data
mean(gs, na.rm = TRUE) #na.remove, so removes all NA values when set to TRUE, then you can get the mean

#manipulations
sciname <- paste(d$Genus, d$Species, sep = "") #pasting together genus species as vector, sep is the separator, you can add a space or other separator
sciname

sciname <- paste0(d$Genus, " ", d$Species)
sciname

sciname <- tolower(sciname) #all lowercase
sciname

sciname <- toupper(sciname) #all uppercase
sciname

name <- unique(d$Genus)
name

name <- unique(d[["Genus"]])
name

CHANGES

