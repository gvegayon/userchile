
################################################################################
# (1) Configuracion inicial
################################################################################

# Limpiando espacio de trabajo
# rm("objeto")
rm(list=ls())

# Estableciendo carpeta de trabajo
setwd("~/Documents/userrchile/presentaciones/20130713_short_intro_knitr/")

# Cargando espacio de trabajo
# load(miespacio)

################################################################################
# Cargando librarias
################################################################################

# Instalando knitr
# install.packages("knitr")

# Cargando knitr ()
library(knitr)

# Cargando ggplot2 (graficos)
library(ggplot2)

################################################################################
# Creando objetos basicos
################################################################################

# Escalar
k <- 5

# Vector
V <- 1:10 # seq(1,10,1)

# Matriz
M <- matrix(1:9, nrow=3, byrow=T)

# Lista
L <- list(k=k,V=V,M=M)

# Mirando elementos de una lista
L$M # Matriz
L$k # Escalar

################################################################################
# Cargando Procesando informacion (data frames)
################################################################################

# Cargando datos de un paquete (data.frame)
data(USArrests)

# Data frames tambien son listas!
USArrests$Murder

# Leyendo un csv
datos <- read.csv(file="usarrests.csv", row.names=1)

################################################################################
# Tejiendo ...
################################################################################

knit2html("20130713_short_intro_knitr.Rmd")
