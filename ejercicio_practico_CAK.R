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

install.packages(c("here",
                   "tidyverse",
                   "patchwork",
                   "tidyverse",
                   "RColorBrewer",
                    "readxl",
                   "tidylog",
                   "summarytools",
                     "knitr"))
library(here) #refiere la ruta a la carpeta del proyecto
library(tidyverse) #incluye la librería ggplot2
library(ggplot2) #VISUALIZACIÓN DE DATOS
library(RColorBrewer) #paletas de color
library(plotly) #hacer los gráficos interactivos
library(patchwork) #combinar gráficos de ggplot
library(tidyverse)
library(readr) #leer archivos
library(readxl) #leer archivos excel
library(dplyr) #manipular datos
library(tidyr) #ordenar y trasformar datasets
library(stringr) #manipular caracteres
library(forcats) #manipular factores
library(lubridate) #manipular fechas

ourdata$species <- as.factor(ourdata$species) 
ggplot(ourdata, aes(x = length_1_mm,
                    y = weight_g,
                    color = species)) + 
  geom_point()

od2 <- ourdata %>%
  filter(species != "Cascade torrent salamander")

  head(od2)

ggplot(od2, aes(x = length_1_mm,
                    y = weight_g,
                    color = species)) + 
  geom_point()








































































############################################
CARLOS

# The length_1_mm variable is the total or snout-fork length for cutthroat trout (total length from 1987 - 1994; snout-fork length since 1995), and snout-vent length for salamanders (all in millimeters).
levels(ourdata$section)
str(ourdata)
ourdata$section <- as.factor(ourdata$section)
