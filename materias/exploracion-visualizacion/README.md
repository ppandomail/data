# Exploración y Visualización de Datos

* Clases de jueves de 18:30 – 21:00pm
* [Enlace de la videollamada](https://meet.google.com/cyd-efsh-cmy)
* Profesor: Diego Edwards Molina
* Campus
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
* Es un entorno de software libre para el cálculo estadístico y generación de gráficos

### Manejo de datos R

|                           | Sintaxis             | Ejemplos     |
| --                        | --                   | --           |
| Asignación                | <-                   | x <- 1       |
| Comentarios               | #                    | # comentario |
| Comillas                  | ""                   | "hola"       |
| Imprimir                  | print                | print(x)     |
| Tipo objeto               | mode                 | mode(x)      |
| Longitud objeto           | length               | length(x)    |
| Borrar objetos de memoria | rm                   | rm(x)        |
| Ver objetos guardados     | ls                   | ls()         |
| Operadores aritméticos    | +, -, *, /, ^, %%    | 4 %% 2       |
| Funciones matemáticas     | sqrt, log, sum, prod | sum(c(2, 4)) |
| Valores muy grandes       | Inf, -Inf            | 2^2048       |
| Indeterminación           | NaN                  | 0/0          |
| Operadores relacionales   | <, <=, >, >=, ==, != | 9 != 3       |
| Operadores lógicos        | \|, &, !             | !TRUE        |

### Tipos de datos R

|                           | Sintaxis             | Ejemplos                                                 |
| --                        | --                   | --                                                       |
| Caracter                  | ""                   | str <- "Pablo"                                           |
| Numérico                  |                      | n <- 0.5                                                 |
| Entero                    |                      | i <- 5                                                   |
| Complejo                  |                      | c <- 2 + 4i                                              |
| Lógico                    | TRUE, FALSE          | b <- TRUE                                                |
| Vector                    | c(...)               | v <- c(1, 2, 3)                                          |
| Secuencia                 | min:max              | s <- 1:10                                                |
| Factor                    | factor               | f <- factor(c(1, 2))                                     |
| Matriz                    | matriz               | m <- matrix(1:6, nrow=2, ncol=3)                         |
| Lista                     | list                 | l <- list(1:5, c('a', 'b'))                              |
| Data frames               | data.frame           | df<- data.frame(vocal=c('a', 'e', 'o'), cant=c(3, 2, 3)) |

### Funciones sobre tipos

|                           | Sintaxis             | Ejemplos                              |
| --                        | --                   | --                                    |
| Tabla de frecuencias      | table                | table(c(1, 2, 1, 1, 3))               |
| Replica elementos         | rep                  | c(rep("rojo", 2))                     |
| Dimensiones de matriz     | dim                  | dim(matrix(nrow=2, ncol=3))           |
| Número de filas           | nrow                 | nrow(df)                              |
| Número de columnas        | ncol                 | ncol(df)                              |
| Nombre de filas           | rownames             | rownames(df)                          |
| Nombre de columnas        | colnames             | colnames(df)                          |
| Atributos de un objeto    | attributes           | attributes(df)                        |
| Extraer elementos         | [], $                | v[1]; v[c(1, 2, 3)]; v[1:3]; df$vocal |
| Filtro en dataframe       | subset               | subset(df, vocal=="a")                |
| in                        | %in%                 | subset(df, vocal %in% c("a", "o"))    |
| Coerción a numérico       | as.numeric           | as.numeric(c('1.5', '3.2'))           |
| Coerción a caracter       | as.character         | as.character(c(1, 3))                 |
| Coerción a entero         | as.integer           | as.integer(c('1', '3'))               |
| Coerción a lógico         | as.logical           | as.logical(c(0, 1, 2)) # 0:FALSE      |
| Coerción a factor         | as.factor            | as.factor(c("a", "b", "a", "a"))      |
