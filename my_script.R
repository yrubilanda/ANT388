library(tidyverse) #load tidyverse

d <- read.csv("~/Repos/ANT388/data-wrangling.csv") #open file from path

fbm <- d$Body_mass_female_mean #pull out female body mass
fbm

bs <- d$Brain_Size_Species_Mean #pull out brain size
bs

plot(fbm, bs) #plot brain size to female body mass

plot(log(fbm), log(bs)) #plot log of fbm and bs
