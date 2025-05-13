# Fundamentos de Estadística

* Prof: Mg. Silvia Pérez
* [Email](sperez@uno.edu.ar)
* Se usa R

## Evaluación

* TP individual: AED + simulación
* TP grupal: integrador utilizando un conjunto de datos a elección (análisis exploratorio + informe)

## ¿Por qué necesitamos entender Estadística?

* Comprender el mundo que nos rodea
* Hipótesis se cumple o no
* Para explicar la realidad mediante: datos, tablas, gráficos
* Para inferir o predecir

## ¿Cómo obtenemos los datos?

* Recolección propia
* Información disponible
* Recoleccion de terceros
* Bases de organismos públicos
* Etc

## ¿Qué pretendemos de nuestros datos?

* Análisis exploratorio (muestro lo que veo y busco relaciones)
* Inferencia estadística (predigo algo que no veo)

## Etapas del proceso estadístico

1. Datos de una muestra representativa de una población
2. Mediante inferencia --> Modelar información: modelos probabilísticos para las variables
3. Relaciones entre variables: modelos estadísticos

## Variables observadas en los datos

* **Variables** en columnas: edad, título, residencia, ...
  * característica o propiedades del objeto de estudio
* **Casos** en filas: {45, médico, CABA}, {53, contador, CABA}, ...

## Tipos de variables

* **Cualitativas o Categóricas**
  * Nominales (sin orden): título, ciudad
  * Ordinales (con orden): cargo
* **Cuantitativas o Numéricas**
  * Discretas (entero): cant de materias aprobadas
  * Continuas (real): edad, tiempo de obtención de título

## Análisis exploratorio de datos: univariado

* gráficos: circulares o sectores, barras, histogramas, box-plot, etc
* tablas: frecuencias, etc.
* medidas resumen: media, mediana, moda, desvío, mínimo, percentiles, etc.

## Representación gráfica: cualitativas

* Barras: categóricas y discretas
* Circular o sectores: nominales u ordinales

## Tablas de frecuencias para variables cualitativas

* **Frecuencia**: es el número de ocurrencias de un valor o categoría
* Se pueden construir tablas con distintos tipos de frecuencias
* Acumuladas (Fi y Hi): sólo tiene sentido si es una variable ordinal

  | Calificación | fi (frec absoluta) | hi (frec relativa) = fi/n | Porcentaje | Fi (fi acum)  | Hi (hi acum) |
  | --           | --                 | --                        | --         | --            | --           |
  | Excelente    | 74                 | 0.296                     | 29.6%      | 74            | 0.296        |
  | Bueno        | 58                 | 0.232                     | 23.2%      | 132           | 0.528        |
  | ...          | ...                | ...                       | ...        | ...           | ...          |

## Representación gráfica: cuantitativas

* Histogramas:
  * se usan para variables con un amplio dominio
  * permite ver esquemas de comportamientos que son dificiles de ver en una tabla numérica
  * se busca que el área total bajo el histograma sea igual a 1, porque puede servir para estimar algo de la variable aleatoria que hay atrás
  * se grafica fi/n/amplitud del intervalo Ci
  * intervalo = [a, b)
  * amplitud del intervalo Ci = b - a
  * density = hi / (b-a)

    | Clases | fi | hi  | hi / (b-a) |
    | --     | -- | --  | --         |
    | [a, b) | 3  | 3/6 | 3/6/(b-a)  |
    | [c, d) | 2  | 2/6 | 2/6/(d-c)  |
    | [e, f) | 1  | 1/6 | 1/6/(f-e)  |

* Box-plots o diagramas de caja

## Medidas resumen

* **De posición**: media (cuantis), mediana (cuantis), moda (cualis, a veces para cuantis)
* **De dispersión** (cuantis): rango, varianza, desvio, coef de variación
* **De asociación**: correlación (entre 2 cuantis)

| Datos |
| --    |
| 100   |
| 200   |
| 200   |
| 250   |
| 600   |

### Media (muestral) o promedio

* Se deja influir por datos alejados o atípicos
* x̄ = (x1 + x2 + ... xn) / n
* x̄ = (100 + 200 + 200 + 250 + 600) / 5 = 270

### Mediana (ME)

* Valor que separa la muestra ordenada en dos partes
* 100, 200, **200**, 250, 600

### Moda (MO)

* Valor que se repite con mayor frecuencia en los datos
* **200**

### Varianza (muestral)

* Calcula un promedio corregido de las distancias al cuadrado respecto del promedio
* S^2 = (1 / (n-1) ) / (x1 - x̄)^2 + (x2 - x̄)^2 + ... + (xn - x̄)^2
* S^2 = ((100 - 270)^2 + (200 - 270)^2 + (200 - 270)^2 + (250 - 270)^2 + (600 - 270)^2) / (5 - 1)
* S^2 = 37000

### Desvío estándar

* S = sqrt(S^2)
* S = sqrt(37000) = 192.35

### Rango

* Cuan dispersos están los valores de esa variable
* valor max - valor min
* rango = 600 - 100 = 500

### Coef de variación

* Coef de variación = desvio / media
* Coef de variación = (192.35 / 270) = 0.7124

### Otras medidas

* Cuartiles: separan a la muestra en 4 partes iguales
  * min---25%---Q1---25%---Q2=ME=D5---25%---Q3---25%---max
* Quintiles: separan a la muestra en 5 partes iguales
* Deciles: separan a la muestra en 10 partes iguales
* Percentiles: es el valor de la variable que deja k% de los datos por debajo de este.
  * min---K%---Pk--------------------------------------max

## Boxplot (diagrama caja-bigote)

* Relacionado con las medidas de resumen
* La caja permite mirar una dispersión central
* Es útil para detectar datos atípicos
* Se puede observar la asimetría de la distribución de una variable
* En el gráfico quedan determinadas medidas de posición
* RI: Rango intercuartílico

| Datos muy atípicos | Datos atípicos o inusuales |            | Q1           | Q2 = Me | Q3 | Xmax       |
| --                 | --                         | --         | --           | --      | -- | --         |
|                    | 1.5 * R.I.                 | 1.5 * R.I. | R.I = Q3 -Q1 |         |    | 1.5 * R.I. |

## Como graficar/describir conjuntamente dos variables (cruzar variables)

* Si las dos son cualitativas:
  * tablas cruzadas
  * sectores separando por categorias / particiones
  * mosaicos
* Si las dos son cuantitativas:
  * Gráficos de dispersión
* Cuali-cuanti:
  * Histogramas separando por categorías / particiones
  * Box-plots separando por categorías / particiones

## Medida de asociación entre dos cuantis: Coeficiente de correlación

* Mide el grado de asociación (lineal)