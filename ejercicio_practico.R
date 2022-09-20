#################################################
## Ejercicio practico del curso de R AEET 2022 ##
#################################################

library(here)
library(remotes)
library(ggplot2)

## cargamos el dataset
remotes::install_github("lter/lterdatasampler")
ourdata <- lterdatasampler::and_vertebrates
str(ourdata)
head(ourdata)
write.csv(ourdata, file = here("data/ourdata.csv"))
here()

###########################################3
CRISTINA

#veamos conflictos varios

head(ourdata)
m<-lm(x,y)












































































############################################
CARLOS

# The length_1_mm variable is the total or snout-fork length for cutthroat trout (total length from 1987 - 1994; snout-fork length since 1995), and snout-vent length for salamanders (all in millimeters).
levels(ourdata$section)
str(ourdata)
ourdata$section <- as.factor(ourdata$section)
