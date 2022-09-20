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

