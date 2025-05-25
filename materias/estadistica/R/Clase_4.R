## Test de HIPOTESIS

library(readxl)
library(ggplot2)
library("nortest")
library("tseries")

# Se tiene una muestra de 146 estudiantes de escuelas medias sobre los que se relevó
# información. Se considera que esta muestra representa a los estudiantes de una población.

estudiantes <- read_xlsx("estudiantes2025.xlsx")
str(estudiantes)
summary(estudiantes) # se ve que hay variables no numéricas. Las convertimos a factor.
# RECORDAR: ID no es una variable.. la puedo sacar para no confundir
estudiantes <- estudiantes[,-1]
estudiantes$sexo <- as.factor(estudiantes$sexo)
estudiantes$colegio <- as.factor(estudiantes$colegio)
estudiantes$clases <- as.factor(estudiantes$clases)
summary(estudiantes)

#La función que usamos en pruebas de medias es:
# t.test(x, y = NULL,alternative = c("two.sided", "less", "greater"),
#       mu = 0, paired = FALSE, var.equal = FALSE,
#       conf.level = 0.95, ...)

###############################
## PRUEBAS PARA UNA MEDIA ###

# Queremos hacer pruebas de hipótesis para la nota media.
# necesitamos previamente verificar si puede suponerse normalidad para la variable!

###############################
## PRUEBAS DE NORMALIDAD ##
# H0: la nota de un estudiante sigue una distribución Normal
# H1: la nota de un estudiante NO sigue una distribución Normal

shapiro.test(x = estudiantes$nota) # para n<50. No es correcto usarlo acá!

lillie.test(x = estudiantes$nota)

jarque.bera.test(x = estudiantes$nota)

attach(estudiantes) # se asume que las variables están en este dataset

## AHORA VAMOS A PROBAR HIPOTESIS PARA LA NOTA MEDIA ###
# ej 1) 
# H0: media= 6.6   H1: media != 6.6
t.test(nota, alternative = 'two.sided', mu = 6.6)

# ej 2) 
# H0: media= 6.3   H1: media > 6.3 
t.test(nota, alternative = "greater", mu = 6.3)

# ej 2) 
# H0: media= 6   H1: media < 6.7 
t.test(nota, alternative = "less", mu = 6.7)

#########################################
## PRUEBAS DE COMPARACION DE 2 MEDIAS ###
#########################################
# Para el caso de dos poblaciones independientes

privados <- estudiantes[estudiantes$colegio=="Privado", ]
publicos <- estudiantes[estudiantes$colegio=="Publico", ]
# hay que verificar primero la condicion de varianzas iguales (homogeneidad)

## PRUEBA DE IGUALDAD DE VARIANZAS ##
bartlett.test(nota ~ colegio,data=estudiantes)

library(car)
leveneTest(nota~colegio,data=estudiantes)

# ambos indican que no se puede rechazar la igualdad de varianzas!

###########################################
## Ahora veamos la prueba de medias:
# 1) 
# H0: media_priv= media_pub   H1: media_priv != media_pub (!= significa distinto)
t.test(x=privados$nota, y = publicos$nota,alternative = "two.sided",
       mu = 0, paired = FALSE, var.equal = T)
## observación: si no hay igualdad de varianzas, se corre la prueba de Welch con var.equal=F

# 2) 
# H0: media_priv= media_pub   H1: media_priv ???? media_pub 
t.test(x=privados$nota, y = publicos$nota,alternative = "less",
       mu = 0, paired = FALSE, var.equal = T)

# 3) 
# H0: media_priv= media_pub   H1: media_priv ???? media_pub 
t.test(x=publicos$nota, y = privados$nota,alternative = "greater",
       mu = 0.4, paired = FALSE, var.equal = T)

#############################################
## COMPARACION DE MEDIAS "APAREADAS"
datos<-read_xlsx("presion_antesydespues.xlsx")
View(datos)
summary(datos)
# 1) H0: media_antes= media_despues   H1: media_antes < media_despues 
t.test(x = datos$antes, y = datos$despues,  alternative="less", mu=0,paired=TRUE)


############################################
##COMPARACION DE MEDIAS INDEP CUANDO NO HAY NORMALIDAD pero hay muestras chicas
## TEST WILCOXON- Mann- Whitney
# necesita igualdad de varianzas!!

library("nortest")
lillie.test(x = estudiantes$edad) #no es variable normal!
library(car)
leveneTest(edad~colegio,data=estudiantes) # varianzas homogéneas
#Test de wilcoxon:
wilcox.test(x = privados$edad, y = publicos$edad, alternative = "two.sided", mu = 0, paired = FALSE)

# qué hipótesis se probó?
# qué decisión tomamos con los resultados?
