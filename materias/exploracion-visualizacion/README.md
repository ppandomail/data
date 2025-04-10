# Exploración y Visualización de Datos

* Clases de jueves de 18:30 – 21:00pm
* [Enlace de la videollamada](https://meet.google.com/cyd-efsh-cmy)
* Profesor: Diego Molina
* Campus
* A principios de Abril: Matricula + 1ra cuota
* Parcial al final del cuatri
* TP grupal

## Ciencia de Datos

* Es un enfoque multidisciplinario (prog + informática + estadistica + conoc de negocio)
* Importante: sacar valor a los datos
* Datos -> Clasificar -> Ordenar -> Visualizar y Analizar

## Tipos de datos

* Estructurados: modelo definido
  * Tablas, BD
* Semiestructurados
  * XML, JSON
* No estructurados: sin modelo (sin organización)
  * Textual, Imagen, video, audio
* Metadata: datos acerca de datos

## Machine Learning (ML)

* Algoritmo aprenda por si solo
* Ejemplo distinguir entre perros y gatos

## IA

* IA -> ML -> DL (Deep Learning)
* Estrategias: Arbol de Decisión, Redes Neuronales

## Big Data

* Conjunto de datos extremadamente grande
* Las 5 V:
  * Velocidad: momento oportuno para que no pierdan valor
  * Veracidad:
  * Variedad: diferentes fuentes
  * Volumen: almacenamiento complejo y capacidad de almacenamiento a nivel Tera
  * Valor: información que puedan tener los datos

## Herramientas

* Programación
  * R -> IDE: RStudio -> FW: Shiny
  * Python -> IDE: Jupyter -> FW: scikit learn

* BigData
  * Spark
  * Cloud

## Usos

* Auto autónomos
* Casas inteligentes
* Gestión de tránsito
* Ciudades inteligentes
* Ofertas personalizadas
* Sistema de recomendaciones
* Predecir el comportamiento de los usuarios y mejorar su experiencia en la plataforma

## R

* Es un lenguaje de programación orientado a objetos
* Muchas librerias (software libre)
* Fuerte en estadistica y académico
* [Descarga R](https://cran.r-project.org/)
* [Descarga RStudio](https://posit.co/download/rstudio-desktop/)
* Es un entorno de software libre para el cálculo estadísticoy generación de gráficos
* Es un logico

## Sintaxis

```R
x <- 1    # asignación
x         # contenido
print(x)  # contenido
mode(x)   # tipo
length(x) # longitud
```

### Operaciones algebraicas

```R
2 + 2   # Suma
2 - 2   # Resta
2 * 2   # Multiplicación
2 / 2   # División
2 ^ 2   # Potencia
2 %/% 2 # Parte entera de la división de x por y
2 %% 2  # Resto
```

### Funciones matemáticas

```R
sqrt(9)   # raíz cuadrada
exp(-1)   # exponencial
log(100)  # logaritmo natural
log10(10) # logaritmo base 10 

abs(-2)   # valor absoluto

sum(c(2, 4))    # suma los elementos
prod(c(2, 4))   # producto de los elementos 
round(3.424, 2) # redondea
ceiling(1.4)    
floor(1.4)

max(5, 10, 15)
min(5, 10, 15)
```

## Valores especiales

```R
2^2048  # Inf
0/0     # NaN
```

## Operadores lógicos

```R
x < y
x <= y
x > y
x >= y
x == y
x != y
```

## Ejercicios operadores

```R
# Realizar lasiguiente operación y guardarlo en una variable "calc_1" (45/5−5)∗10
calc_1 <- (45/5 - 5) * 10
calc_1

# Crear un objeto "estatura" con un valor de 1.74, y otro objeto "peso" con un valor de 82. Luego realizar la división entre "peso" y "altura", y guardar el resutado en una nueva variable "imc"
estatura <- 1.74
peso <- 82
imc <- peso / estatura
imc

# Elevar al cubo a "imc" sin guardar el resultado
imc ^ 3

# Verificar si el logaritmo natural de "imc" es menor o igual a 0
log(imc) <= 0

# Colocar los paréntesis en los lugares que correspondan a la siguiente expresión para que el resultado sea igual a 15: 5 + 3 * 10 %/% 3
5 + (3 * 10) %/% 3
```

## Tipos de datos

```R
nombre <- "Datos"  # Caracter
length(nombre)     # longitud

real   <- 3.14     # Numérico (números reales)
entero <- 2        # Entero
comple <- 2+4i     # Complejo
logico <- TRUE     # Lógico (Verdadero/Falso)

Factor             # Variables clasificadoras o agrupadoras de los datos
```

## Vector

```R
# Vector: elementos del mismo tipo
x <- c(1, 2, 3, 4, 5)
x <- 1:5               # otra manera
x <- seq(1, 5, 1)      # la función seq puede crear 

x <- factor(c("si", "si", "no", "si", "no")) 
table(x)               # tabla de frecuencias
unclass(x)             # vector sin las etiquetas

x[3]   # posición 3
x[1:5] # posiciones del 1 al 5

x[c(2, 4, 6)]  # posciones 2, 4 y 6
x[c(4, 6, 2)]  # misma posiciones sin necesidad de que estén ordenados

x[-1] # todas las posiciones del vector menos la 1
```

## Ejercicios con vectores

```R
# Construir un vector del 1 al 10 y guardarlo en una variable "x"
x <- 1:10

# Construir un vector del 1 al 20, cada dos unidades y guardarlo en una variable "y"
y <- seq(1, 20, 2)

# Sumar "x" con "y"
z <- x + y

# Restarle al vector "y" las primeras dos posiciones del vector "x"
y = y - x[c(1,2)]

# Agregarle al vector "x" los valores de "y" que sean mayores a 5 y guardarlo en una nueva variable
for (e in y) 
  if (e > 5)
    z <- append(x, e)

# Eliminar la primera posición del vector y
y <- y[-1]

# Eliminar la última posición del vector y
y <- y[-length(y)]

# Sumar todos los valores de "y" menos el último
Sum(y[-length(y)])

# Agregarle un NA al vector "x" en las posiciones 8 y 9
x[8] <- x[9] <- NA
```

## Ejercicios con caracteres

```R
# Guardar la palabra ¡Visualizacion! en un objeto
x <- "¡Visualizacion!"

# Crear un objeto llamada "colores" que contenga un vector con las cadenas "rojo", "azul", "verde", "azul", "rojo"
colores <- c("rojo", "azul", "verde", "azul", "rojo")

# Aumentar la longitud del vector "colores" a 10

# Crear un vector de factores de 50 elementos que contenga las 5 "V" de Big data, cada uno de ellos 10 veces

```

## Matriz

```R
m <- matrix(nrow = 2, ncol = 3) 
dim(m)  # verifica dimensiones

m <- matrix(1:6, nrow = 2, ncol = 3) # se completa col por col de izq a der
```

## Lista

```R
lista <- list(Numeros = 1:5, Cadena = c("Hola", "Hola"),
              Matriz = matrix(1:6, nrow = 2, ncol = 3))
lista_1 <- list(lista, lista)  # lista de listas

lista <- list("a", "b", "c")
lista[1] <- "d"
length(lista)
"a" %in% lista
append(lista, "e")
append(lista, "z", after = 2)
lista <- lista[-1]

lista[1]         # primer objeto
lista[[1]][1]    # primer elemento del primer objeto
lista[[3]][2, 3] # del tercer objeto de la lista (matriz), extraemos el elemento ubicado en la fila 2, columna 3
lista[-length(lista)] # todos los objetos menos el último
```

## Dataframe

* Tipo especial de lista

```R
df <- data.frame(fruta = c("manzana", "pera", "banana", "ciruela"), cant = 1:4)
nrow(df)      # número de filas
ncol(df)      # número de columnas
colnames(df)  # nombres de las columnas
row.names(df) # nombres de las filas

df[1]
df[["frutas"]]
df$frutas

df <- rbind(df, c("anana", 5))                 # nueva fila
df <- cbind(df, calorias = c(10, 60, 20, 10))  # nueva columna

df[1,1] # dato de la fila 1 y columna 1
df[1, ] # todos los datos de la fila 1
df[,1]  # todos los datos de la columna 1
df[1]   # otra manera, todos los datos de la columna 1 
df[[1]] # otra manera, todos los datos de la columna 1 como vector
df$frutas.Length # otra manera, todos los datos de la columna 1 como vector
```

## Ejercicios con Dataframes

```R
# Crear un dataframe con las siguientes variables:
# Sexo: "hombre", "mujer", "hombre", "hombre", "mujer", "mujer", "hombre", "mujer"
# Presión arterial: 119, 99, 102, 78, 78, 82, 96, 104
# Pulsos por minuto: 59, 89, 107, 76, 91, 64, 78, 92
# Guardarlo en un objeto llamado "datos"
datos <- data.frame( Sexo = c("hombre", "mujer", "hombre", "hombre", "mujer", "mujer", "hombre", "mujer"),
                     Presión_arterial = c(119, 99, 102, 78, 78, 82, 96, 104),
                     Pulsos_por_minuto = c(59, 89, 107, 76, 91, 64, 78, 92))

# Visualizar todos los valores para el primer y cuarto individuo
datos[c(1,4),]

# Repetir lo mismo pero solo para las últimas dos variables
datos[c(1,4),c(2,3)]

# Determinar si la primera mujer de la tabla tiene una presión arterial mayor a la de la segunda mujer
subset(datos, Sexo=='mujer')[1,2] > subset(datos, Sexo=='mujer')[2,2]

# Construir una nueva columna que cuente los pulsos pero por hora
datos <- cbind(datos, Pulsos_por_hora = c(datos[,3] * 60))

# Seleccionar solo los hombres que tengan una presión arterial mayor a 100 y guardar la tabla en una variable "hombres_mayor100"
hombres_mayor100 <- subset(datos, Sexo=='hombre' & Presión_arterial > 100)

# Con la función max() determinar el valor máximo de pulsos por minutos de las mujeres
max <- max(subset(datos, Sexo=='mujer')[3])
```

## Importar datos

```R
getwd()                     # verificar sobre que directorio se está trabajando
setwd("C:/Users/Pablo/BD")  # cambiar el directorio de trabajo

df <- read.table("xxx.csv", sep = ";", header = TRUE) 
head(df)

df <- read.csv("xxx.csv",sep = ";") # otra forma
head(df)

library(openxlsx) # cargamos la librería
df <- read.xlsx("xxx.xlsx")
head(df)
```

## Exportar datos

```R
write.csv(x = df, file = "xxx")  # separados por coma
write.csv2(x = df, file = "xxx") # separados por punto y coma

write.xlsx(x = df, file = "xxx.xlsx", rowNames = FALSE)
```

## Ejercicios Importar y Exportar datos

```R
# Descargar de la página correspondiente e importar la base de datos ecobicis
setwd("/Users/ppando/Materias/data/materias/exploracion-visualizacion/bd")
df <- read.table("usuarios_ecobici_2024.csv", sep = ",", header = TRUE)
head(df)

# Leer los nombres de las columnas de la base
names(df)

# ¿Cuántos años tiene la mujer de mayor edad?
df_females <- subset(df, genero_usuario=='FEMALE') 
max(df$edad_usuario) ????


# ¿Cuál es la edad más frecuente de los hombres?
mvf ????

# Segmentar la base con las mujeres que tienen una edad mayor a 40 y guardarla en un archivo .csv

# Guardar los datos de cada categoría de la variable "genero_usuario" en distintos dataframes y exportarlos a distintas hojas del Excel

```

## Transformar datos con Tidyverse

* select
* mutate
* filter
* arrange

```R
x <- c(1, 2, 3, 4)
x %>% sum %>% sqrt  # equivalente a sqrt(sum(x))

df  <- read.csv2("xxx.csv", stringsAsFactors = TRUE)
df1 <- df %>% select(col2, col3, col4)     # selecciona columnas de un dataframe
df2 <- df1 %>% mutate(col5 = col4*1000)    # agrega una columna a la tabla

# guardo los primeros 10 barrios ordenados alfabéticamente en una variable


x <- sort(unique(df$col1)[1:10])   # ordena de menor a mayor, o viceversa, un vector o factor

df3 <- df2 %>% filter(col2 %in% x & year > 2015) # filtrar

df4 <- df3 %>% arrange(desc(col5)) # ordena de mayor a menor el dataframe a partir de la columna

df5 <- df4 %>% group_by(place_name) %>%
               summarise(promedio_precio_pesos = mean(price_pesos),
                         min_precio_pesos = min(price_pesos),
                         max_precio_pesos = max(price_pesos))

```

## Ejercicios con Tidyverse

```R
# Trabajar con la base de datos gapminder que se encuentra en la librería con el mismo nombre
gapminder <- gapminder::gapminder

# ¿Cuál es la observación con mayor expectativa al nacer de toda la base? ¿A qué país corresponde y a qué año?

# ¿Cuánto aumentó la expectativa de vida al nacer por continente en en 2007?
 
# Realizar una tabla en formato “wide” en donde las columnas contengan los años, y las observaciones sean los promedios de la población de los paises de América.

# ¿En qué porcentaje aumentó el PBI per cápita de Argentina en 2007 con respecto a 2002?

# Unir, con los diferentes métodos de join, el dataframe “Gapminder” con el dataframe “mortalidad infantil”, pero solo el año 1952.
# Utilizar todos los países de ambos dataframes.
# De ambas bases utilizar solo Argentina.
# De “gapminder” utilizar todos los países y de “mortalidad infantil” solo Argentina. Visualiza y extraer las dimensiones en cada caso para comparar.




```

## Funciones

```R
sumar = function(a=1, b=1) { return (a+b) }
sumar(1, 2)
sumar()
```

## Gráficos

```R
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
```
