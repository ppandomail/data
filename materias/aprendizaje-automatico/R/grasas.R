library(ggplot2)

# Lectura del archivo

grasas<-read.csv("L:/Mi unidad/CienciaDeDatos/EspecializacionUNO/RegresionLinealSimple/Clase1/Grasas.csv", sep=";")

# Modelo
modelo <- lm(grasas ~ edad, data = grasas)
summary(modelo)

# Scatter plot y recta de regresión
plot(grasas$edad, grasas$grasas, xlab='edad', ylab='grasas')
abline(modelo)

# Grafico residuos estandarizados vs predichos - R base
par(mfrow = c(1, 1))
res_stand<-rstandard(modelo)
plot(modelo$fitted.values,res_stand,xlab="valores predichos",ylab="residuos estandarizados",main="Residuos estandarizados vs. predichos")
abline(0,0,col="red",lwd=2)
qqnorm(rstandard(modelo), main="Qqnorm de residuos estandarizados")
qqline(rstandard(modelo))

# Grafico residuos estandarizados vs predichos - en ggplot
res.pred.df<-data.frame(x=modelo$fitted.values,y=rstandard(modelo))
ggplot(data=res.pred.df,aes(x,y))+
  geom_point(size=1)+
  geom_hline(yintercept = 0, color="red")+
  theme_minimal() +
  labs(title = "Residuos estandarizados vs. predichos",
       x = "valores predichos",
       y = "residuos estandarizados")

# qqplot residuos estandarizados - en ggplot
ggplot(data = data.frame(residuos = rstandard(modelo)), aes(sample = residuos)) +
  stat_qq(color = "dodgerblue") +
  stat_qq_line(color = "red", linetype = "dashed") +
  theme_minimal() +
  labs(title = "Q-Q Plot de residuos estandarizados",
       x = "Cuantiles teóricos",
       y = "Cuantiles muestrales")


# Intervalos de confianza para los parametros
confint(modelo)

# prediccion
nuevas.edades <- data.frame(edad = c(30,45))
nuevas.edades

predict(modelo, nuevas.edades)

# Intervalo de confianza 
predict(modelo, newdata=nuevas.edades, interval="confidence")

# Intervalo de prediccion
predict(modelo, newdata=nuevas.edades, interval="prediction")

# banda de prediccion
nuevas.edades <- data.frame(edad = seq(20, 80))
# Intervalo de confianza para la respuesta media
ic.con <- predict(modelo, nuevas.edades, interval = 'confidence')
# Intervalos de prediccion
ic.pred <- predict(modelo, nuevas.edades, interval = 'prediction')

nuevas.edades.con.df<-cbind(nuevas.edades,ic.con)
nuevas.edades.pred.df<-cbind(nuevas.edades,ic.pred)
head(nuevas.edades.con.df)
head(nuevas.edades.pred.df)

ggplot(grasas, aes(x=edad, y=grasas))+
  geom_point()+
  geom_smooth(method=lm, formula=y~x, se=TRUE, level=0.95, col='blue', fill='pink2') +
  geom_line(data = nuevas.edades.con.df,aes(x=edad,y=lwr), color="red", 
            linetype="dashed") +
  geom_line(data = nuevas.edades.con.df,aes(x=edad,y=upr),color="red",
            linetype="dashed")+     
  geom_line(data = nuevas.edades.pred.df,aes(x=edad,y=lwr),color="blue",
            linetype="dashed")+
  geom_line(data = nuevas.edades.pred.df,aes(x=edad,y=upr), color="blue",
            linetype="dashed") +
  theme_light()
