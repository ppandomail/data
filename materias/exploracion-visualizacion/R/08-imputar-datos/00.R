# Datos perdidos o faltantes
# MCAR: no responde porque se olvida
# MAR: no responde porque no quiere
# NMAR: no es aleatorio

# Imputar es completar los datos faltantes

base <- airquality
head(base)

library(VIM)
aggr(base, numbers=T, sortVar=T)

library(mice)

columnas <- c("Ozone", "Solar.R")
imput_data <- mice(base[,names(base) %in% columnas],m = 1,
                   maxit = 1, method = "mean", print=F)
complete.data <- complete(imput_data)

par(mfrow = c(1, 2))

hist(na.omit(airquality$Ozone),
     breaks = 15,
     col = NA,
     border = "blue",
     ylim = c(0, 40),
     xlab = "Ozone (ppb)",
     ylab = "Frequency",
     main = "")

hist(complete.data$Ozone[which(is.na(airquality$Ozone))],
     col = NA,
     border = "deeppink",
     add = TRUE)

hist(na.omit(airquality$Solar.R),
     breaks = 15,
     col = NA,
     border = "blue",
     ylim = c(0, 40),
     xlab = "Solar.R",
     ylab = "Frequency",
     main = "")

hist(complete.data$Solar.R[which(is.na(airquality$Solar.R))],
     col = NA,
     border = "deeppink",
     add = TRUE)

xyplot(imput_data,Ozone ~ Solar.R)