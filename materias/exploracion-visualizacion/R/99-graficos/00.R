# Gráficos

plot(1, 3)
plot(c(1, 8), c(3, 10))
plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))
plot(1:10)
plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis")
plot(1:10, col="red")
plot(1:10, cex=2)          # cex: cambiar el tamaño de los puntos
plot(1:10, pch=25, cex=2)  # pch: cambiar la forma de los puntos

plot(1:10, type="l") # linea
plot(1:10, type="l", col="blue")