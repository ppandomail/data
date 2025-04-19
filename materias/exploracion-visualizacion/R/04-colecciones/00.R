# Matriz

m <- matrix(nrow = 2, ncol = 3) 
dim(m)                               # verifica dimensiones
m <- matrix(1:6, nrow = 2, ncol = 3) # se completa col por col de izq a der

# Lista

lista <- list(Numeros = 1:5, Cadena = c("Hola", "Hola"), Matriz = matrix(1:6, nrow = 2, ncol = 3))
lista_1 <- list(lista, lista)  # lista de listas

lista <- list("a", "b", "c")
lista[1] <- "d"
length(lista)
"a" %in% lista
append(lista, "e")
append(lista, "z", after = 2)
lista <- lista[-1]

lista[1]              # primer objeto
lista[[1]][1]         # primer elemento del primer objeto
lista[[3]][2, 3]      # del tercer objeto de la lista (matriz), extraemos el elemento ubicado en la fila 2, columna 3
lista[-length(lista)] # todos los objetos menos el último

# Dataframe: tipo especial de lista

df <- data.frame(fruta = c("manzana", "pera", "banana", "ciruela"), cant = 1:4)
nrow(df)      # número de filas
ncol(df)      # número de columnas
colnames(df)  # nombres de las columnas
row.names(df) # nombres de las filas

attributes(df)

df[1]
df[["frutas"]]
df$frutas

df <- rbind(df, c("anana", 5))                 # nueva fila
df <- cbind(df, calorias = c(10, 60, 20, 10))  # nueva columna

df[1,1]          # dato de la fila 1 y columna 1
df[1, ]          # todos los datos de la fila 1
df[,1]           # todos los datos de la columna 1
df[1]            # otra manera, todos los datos de la columna 1 
df[[1]]          # otra manera, todos los datos de la columna 1 como vector
df$frutas.Length # otra manera, todos los datos de la columna 1 como vector

iris_setosa <- subset(iris, Species=="setosa")

# Filtramos a la variedad Species reteniendo solo las categorías “setosa” y “virginica”
iris_set.virginica <- subset(iris, Species %in% c("setosa", "virginica"))

# Podemos filtrar las longitudes de sepal mayores a 5, reteniendo las variables "Sepal.Length" y "Species"
iris_sepal <- subset(iris, Sepal.Length > 5, select = c("Sepal.Length", "Species"))

# Filtramos haciendo las dos acciones a la vez
iris2 <- subset(iris, Species %in% c("setosa", "virginica") & Sepal.Length > 5, select = c("Sepal.Length", "Species"))