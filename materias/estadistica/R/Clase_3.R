# Estimación e Intervalos de Confianza

# Cargo librerías a utilizar
library(readr)
library(readxl)
library(ggplot2)

# Borro el ambiente de trabajo
rm(list=ls())

# Para cada distribución:
# dxxx(x, ...)  # Función de masa de probabilidad, f(x) para VAC ó P(X=x) para VAD
# pxxx(q, ...)  # Función de distribución acumulada hasta q, F(q)= P(X<=q)
# qxxx(p, ...)  # Cuantil para el cual P(X <= q) = p
# rxxx(n, ...)  # Generador de números aleatorios

# Se tiene una muestra de 146 estudiantes de escuelas medias sobre los que se relevó
# información. Se considera que esta muestra representa a los estudiantes de una población.

estudiantes<- read_xlsx("estudiantes2025.xlsx")
str(estudiantes)
summary(estudiantes) # se ve que hay variables no numéricas. Las convertimos a factor.
# también tenemos que sacar ID!!! no es una variable..
estudiantes<-estudiantes[,-1]
estudiantes$sexo<-as.factor(estudiantes$sexo)
estudiantes$colegio<-as.factor(estudiantes$colegio)
estudiantes$clases<-as.factor(estudiantes$clases)
summary(estudiantes)

######  ESTIMACIÓN PUNTUAL DE PARÁMETROS ##########
#Qué parámetros estimamos para nota? y edad? 
summary(estudiantes)
# media estimada de nota = 6.516
mean(estudiantes$nota)
sd(estudiantes$nota)
var(estudiantes$nota)
# desvío estimado de nota= 1.283477

### INTERVALOS DE CONFIANZA ######
# Antes tenemos que decidir si puede suponerse una distribución normal para "nota"
# ¿se puede asumir que los datos provienen de una distrib normal??
hist(estudiantes$nota,col = "lightblue")
# más lindo:
ggplot(estudiantes, aes(x = nota)) + 
  geom_histogram(aes(x=nota), binwidth=0.5, fill = "skyblue", color = "blue") +
  labs(title="Histograma de notas") +
  theme_light()

# QQPLOT:
# con Rbase:
qqnorm(estudiantes$nota, main='Normal')
qqline(estudiantes$nota)
# con ggplot:
ggplot(estudiantes, aes(sample = nota)) +
  geom_qq() +
  geom_qq_line()

## podemos asumir normalidad para notas!

# veamos IC para media de notas:
# Usaremos la función: 
# t.test(x, y=NULL, alternative=c("two.sided", "less", "greater"),mu=0, conf.level=0.95)

# veamos un IC del 95% para media:
IC_mu_95 <- t.test(x=estudiantes$nota, conf.level=0.95)
IC_mu_95$conf.int
# tengo una confianza del 95% de que la nota media esté entre 6.3 y 6.72
IC_mu_95$estimate

# Hacerlo para 90% y 99%
IC_mu_9 <- t.test(x=estudiantes$nota, conf.level=0.9)
IC_mu_9$conf.int

# IC para subgrupos dentro de la muestra:
privados <- estudiantes[estudiantes$colegio=="Privado", ]
IC_priv_mu<-t.test(x=privados$nota, conf.level=0.95)
IC_priv_mu$conf.int
IC_priv_mu$estimate # es lo mismo que:
mean(privados$nota)

publicos <- estudiantes[estudiantes$colegio=="Publico", ]
IC_pub_mu<-t.test(x=publicos$nota, conf.level=0.95)
IC_pub_mu$conf.int
IC_pub_mu$estimate

# IC para la varianza
# lo hacemos "a mano"
# requiere normalidad!!
v=var(estudiantes$nota)  #el s^2
n=length(estudiantes$nota)
alfa=0.05   #para nivel de confianza 0.95
Xinf=qchisq(alfa/2,n-1)  #cuantil inferior
Xsup=qchisq(1-alfa/2,n-1) #cuantil sup
LI= (n-1)*v/Xsup
LS= (n-1)*v/Xinf
# IC para var= [1.325316;2.103466] 
# ojo! no es simétrico como los anteriores, pero el s^2=1.6473 está en el intervalo 

# IC para una PROPORCION
Puede usarse cuando n grande!
t= table(estudiantes$clases)
t/146
prop.test(46, 146,conf.level=0.95)
# 95 percent confidence interval: 0.2421559 0.3978877

# IC para DIFERENCIA DE MEDIAS indep
# comparo media de notas en públicos y privados
t.test(x=privados$nota,y=publicos$nota, conf.level=0.95)$conf.int
t.test(x=privados$nota,y=publicos$nota, conf.level=0.95)$estimate

# IC para DIFERENCIA DE MEDIAS APAREADAS
datos<-read_xlsx("presion_antesydespues.xlsx")
View(datos)
summary(datos)
t.test(x = datos$despues, y = datos$antes, paired = TRUE, conf.level = 0.95)