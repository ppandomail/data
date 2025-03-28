m <- matrix(1:6, nrow = 2, ncol = 3)
m # visualizamos la matriz
dim(m) # verificamos las dimensiones de la matriz


arreglo <- array(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 
                   13,14, 15, 16, 17, 18), dim=c(3, 3, 2))

lista <- list(Numeros = 1:5, Cadena = c("Hola", "Hola"),
              Matriz = matrix(1:6, nrow = 2, ncol = 3))

df <- data.frame(Fruta = c("manzana", "pera", 
                           "banana", "ciruela"),
                 Cantidad = 1:4)


nrow(df)  # observamos el número de filas.
ncol(df)  # observamos el número de columnas.
colnames(df) # solicitamos los nombres de las columnas.
row.names(df) # solicitamos los nombres de las filas.

attributes(df)

iris[1,1] # extraemos el dato de la fila 1 y columna 1
iris[1, ] # extraemos todos los datos de la fila 1
iris[,1] # extraemos todos los datos de la columna 1

iris[1] # también, de esta manera, se puede extraer la columna 1 

# o indicando el nombre de la columna a extrae utilizando el símbolo "$". En este caso se extrae en forma de vector
iris$Sepal.Length 

# otra manera de extraer la primera columna como un vector 
iris[[1]]


iris_setosa <- subset(iris, Species=="setosa")

# Filtramos a la variedad Species reteniendo solo las categorías “setosa” y “virginica”
iris_set.virginica <- subset(iris, Species %in% c("setosa", "virginica"))

# Podemos filtrar las longitudes de sepal mayores a 5, reteniendo las variables "Sepal.Length" y "Species"
iris_sepal <- subset(iris, Sepal.Length > 5, select = c("Sepal.Length", "Species"))

# Filtramos haciendo las dos acciones a la vez
iris2 <- subset(iris, Species %in% c("setosa", "virginica") & Sepal.Length > 5, select = c("Sepal.Length", "Species"))