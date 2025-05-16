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

## Recordar: etapas del proceso estadístico

* Partimos de los datos: Muestra representativa de la población
* saber cosas acerca de una variable aleatoria (variable observada en la muestra):
  * la media
  * la distribución
* Inferir modelos probabilísticos (son las distribuciones...)
  
## Qué es un modelo probabilístico?

* Probabilidad (P): hay una experiencia de resultado aleatorio (no certero)
* Espacio muestral: conjunto de todos los resultados posibles
* Evento (H): subconjunto del espacio muestral
* Sobre los eventos se define una medida de probabilidad (números entre 0 y 1)
* Ejemplo:
  * Elegir una carta del mazo de truco
  * Espacio muestral = {1, 2, ..., 40}
  * H = {ancho espada}
  * P(H) = 1/40

## Probabilidad condicional

* Dado dos eventos, se define la probabilidad de A si se sabe que ocurrió B (A dado B o A si B)
  * P(A|B) = P(A∩B) / P(B)
* Ejemplo:
  * A = {sale el nro 1}
  * B = {sale carta de espadas}
  * P(A) = 4/40 = 1/10
  * P(B) = 10/40 = 1/4
  * P(A∩B) = 1/40
  * P(A|B) = P(A∩B) / P(B) = 1/10
* Cuando P(A|B) = P(A) se dice que A y B son independientes

## Fórmula de Bayes

* Dados dos eventos, se puede expresar la probabilidad de A condicional a B usando las condiciones en otro orden, lo que puede ser conveniente según la informacion disponible:
  * P(A|B) = P(B|A)P(A) / (P(B|A)P(A) + P(B|Ã)P(Ã))
* Ejemplos: tengo 4 bolitas amarillas y 6 bolitas rojas en una caja. Saco dos bolitas sin reponer
  * A1 = {sale amarilla la primera}
  * R2 = {sale roja la segunda}
  * P(A1|R2) = P(R2|A1)P(A1) / (P(R2|A1)P(A1) + P(R2|R1)P(R1)) = 24/54
  * P(A1) = 4/10
  * P(R1) = 6/10
  * P(A2|A1) = 3/9

## Variables aleatorias

* Se definen según el interes. Ej: cartas a 1, 2, 3, 4
* Transforma (codifica) los resultados del experimento aleatorio a número reales
* Para cada resultado del espacio muestral hace corresponder un número
* Ejemplos:
  * X: cant de bolitas amarillas en dos extracciones. Valores discretos
  * Y: tiempo hasta el primer gol. Valores continuos (rango de valores)
  * Z: monto en caja de ahorro al día 30. Valores continuos
  * W: cant tiros hasta el primer acierto. Valores discretos

## Tipos de variables aleatorias

* Discretas:
  * número de anillos
* Continuas:
  * longitud, diámetro, peso

## Variable aleatoria discreta (VAD)

* Toma valores en un conjunto discreto de número reales
* Se describen mediante una función de probabilidad P(X=x)
* P(X=x) debe cumplir:
  * P(X=x) >= 0
  * ∑i=0 P(X=xi) =  1

### Parámetros básicos de una VAD

* **Media o esperanza o valor esperado**: indica "alrededor" de que valor se encuentran distribuidos los valores de la variable aleatoria. Se mide en la misma unidad que la variable
  * E(X) = m = μ = ∑i=1 xi P(X=xi)
  * E(x) es el punto de equilibrio o centro de masa de las probabilidades
* **Varianza**: es una medida de dispersión (concentración). Indica cuán alejados están los valores de la variable en relación con la media proporcionados según la probabilidad. Se mide la unidad que la variable al cuadrado
  * V(X) = σ^2x =  ∑i=1 (xi - μ)^2 P(X=xi)
* **Desvio**
  * Desvio = sqrt(V(X))

### Distribuciones discretas más conocidas

|                     |                                                                | Ejemplos                                                          |
| --                  | --                                                             | --                                                                |
| **Binomial**        | # éxitos en n repeticiones de experiencias dicotómicas indep   | obs 20 personas en la guardia la cant de personas con gripe       |
| **Geométrica**      | # experiencias hasta el primer éxito                           | cuento # personas que llegan a guardia hasta el primero con gripe |
| **Hipergeométrica** | # éxitos en n extracciones sin reposición                      |                                                                   |
| **Poisson**         | # éxitos ocurridos en un intervalo fijo de tiempo (o longitud) | obs # de personas que ingresa a guardia entre las 8 y las 9 hs    |

### Función Distribución

* F(x) = P(X<=x)

## Variable aleatoria continua (VAC)

* Se describen mediante una función de densidad f(x)
* f(x) debe cumplir:
  * f(x) >= 0
  * integral f(x)dx = 1  (el area total bajo la curva sea igual a 1)
* Tiene un rango o soporte en un intervalo (o unión de intervalos)

### Parámetros básicos de una VAC

* **Media o esperanza o valor esperado**: es una medida de tendencia central. Indicar "alrededor" de que valor se encuentran distribuido los valores de la variable aleatoria. Se mide en la misma unidad que la variable
  * E(X) = m / μ = integral x f(x)dx
* **Varianza**: es una medida de dispersión. Indica cuán alejado están los valores de la variable en relación con la media. Se mide la unidad que la variable al cuadrado
  * V(X) = σ^2x = integral (x-m)^2 f(x)dx
* **Desvio**
  * Desvio = sqrt(V(X))

## Distribuciones continuas más conocidas

|                  | Ejemplos                                                                 | Densidad                       | Func Distribución | E(X)      | V(X)            |
| --               | --                                                                       | --                             | --                | --        | --              |
| **Uniforme**     | se elige un punto al azar en el intervalo (0, 1)                         | 1 si 0 < x < 1; 0 otro caso    | F(x) = P(X <= x)  | (a+b)/2   | (b-a)^2 / 12    |
| **Exponencial**  | se toma el tiempo (años) hasta que falle un artefacto. λ: tasa de fallos | f(t) = λe^(-λt)                | F(t) = P(T <= t)  | 1/λ       | 1/λ^2           |
| **Normal/Gauss** |                                                                          | f(x) = (1 / sqrt(2π))e^-0.5x^2 | F(Z) = P(Z <= z)  | 0         |                 |
| **T de Student** ||||||
| **Chi-cuadrado** ||||||
  