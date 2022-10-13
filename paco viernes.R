paco viernes, GAM

autocorrelacion espacial ==> moddelo <- height ~ dbh + s(x, y)

Para efecto de dbh en funcion del sitio.
Height ~ s(dbh, by = site)

nº muertes por 1000, y tnemos el gpd.


mort <- read.csv("/home/carlos/cursoR2022/data/UN_GDP_infantmortality.csv")

plot(mort$infant.mortality ~ mort$gdp)

plot(log(mort$infant.mortality) ~ log(mort$gdp))

mort$mort.log <- log(mort$infant.mortality)
mort$gdp.log <- log(mort$gdp)

lm.1 <- lm(mort.log ~ gdp.log, data = mort)
summary(lm.1)
Yo lo hago con lm pero...Pero la mortalidad son valores discretos por lo que no debería ir por gausiano, sino otro ipo
de distribucion como poisson()

PAco dice que se podría hacer co nº de muertes o con probabilidad de morir.
Binomial negativa, pero no queda bien ajustado.

glm.nb <- .... queda bastnte mejor.

luego prueba GAM. (diapo17 del final del archivo)

Parece que el que mejor se ajusta es el gam (según AIX)


###############################
GAMM modelo mixto, pero no lineal
#####################################


## BAYES
DBH ES PREDICTORcontinuo. Mejora la convergencia en bayes si los predicotres continuos los centramos y escalamos.
En bayes es critico entender cada parametro, porque cada  uno tiene un prior.
library(brms)
#usa stand, que es paquete externo. Aunque otro otros como nimble y jacks (este otro en desuso).
# Asi podemos usar la potencia de stand con lenguaje normal de R, gracias a ese paquete de brms
# (prior es distribucion a priori que tiene ese parametro, nuestro conocimiento previo)
