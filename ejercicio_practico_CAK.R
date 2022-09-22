#################################################
## Ejercicio practico del curso de R AEET 2022 ##
#################################################

library(here)
library(remotes)
library(ggplot2)

## cargamos el dataset
# remotes::install_github("lter/lterdatasampler")  #Solo necesario para la descarga de internet
# ourdata <- lterdatasampler::and_vertebrates ## Esto se hace solo una vez, descarga de internet
# write.csv(ourdata, file = here("data/ourdata.csv"))

###########################################3
CRISTINA

#install.packages(c("here","tidyverse","patchwork","tidyverse","RColorBrewer","readxl","tidylog","summarytools","knitr"))
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
library("easystats")
library("effects")
library("equatiomatic")
library("parameters")
library("report")
library("visreg")
library("performance")
library("DHARMa")
library("modelbased")
library(readr)

ourdata <- read_csv("data/ourdata.csv")
View(ourdata)

ourdata$species <- as.factor(ourdata$species)
ggplot(ourdata, aes(x = length_1_mm,
                    y = weight_g,
                    color = species)) +
  geom_point()

data_species2 <- ourdata %>%
  subset(species != "Cascade torrent salamander")

data_species2$species <- as.factor(data_species2$species)
ggplot(data_species2, aes(x = length_1_mm,
                    y = weight_g,
                    color = species)) +
  geom_point()

lm_lter1 <- glm(weight_g ~ length_1_mm + species, data=data_species2)
summary(lm_lter1)
check_model(lm_ter1)

lm_lter2 <- lm(weight_g ~ length_1_mm * species, data=data_species2)
summary(lm_lter2)
check_model(lm_lter2)

# Las asumpciones de los lm no se cumplen, vamos a trasformar los datos
# alternativas: la funcion es exponencial, podriamos transformar solo la variable predictora =length
# alternativa 2 hacer un log log (predictor y respuesta) este puede ser la mejor alternativa ya que
# hay muchos datos de biomasa cercanos a cero, asi aumentas la escala
# sugiero hacer log(y o x+1), para que no salgan valores negativos

data_species2$log2_length <- log2(data_species2$length_1_mm)
data_species2$log10_weight <- log10(data_species2$weight_g)

ourdata$species <- as.factor(ourdata$species)
ggplot(ourdata, aes(x = length_1_mm,
                    y = weight_g,
                    color = species)) +
  geom_point()


# Pruebas una vez resuelto el caso

# ## prueba subset quitando juveniles
# data_species_adult <- ourdata %>%
#   subset(species == "Coastal giant salamander") %>%
#   subset(length_1_mm > 100)
#
#
# data_species_adult$species <- as.factor(data_species_adult$species)
# ggplot(data_species_adult, aes(x = length_1_mm,
#                           y = weight_g,
#                           color = species)) +
#   geom_point()
