# En un famoso casino, la ruleta está formada por 18 números negros, 18 rojos y 2 verdes. 
# Un jugador tiene un capital de $100 y apuesta $1 al rojo cada vez que juega. 
# Si cuando apuesta al rojo sale rojo, entonces recupera su inversión duplicada. 
# Si pierde no recupera nada.
# a) Simular una realización de juego de ruleta y a partir de ella 
# calcular el capital del jugador al finalizar un juego.
# b) Crear una función cantidad juegos que dada una cantidad Nrep de simulaciones 
# del experimento calcule la cantidad de veces que puede jugar el jugador hasta quedarse sin dinero.
# c) Simular 1000 veces el experimento del ítem b y calcular el promedio de los resultados.

# Simulación de una jugada en la ruleta
jugar_ruleta <- function(capital_inicial = 100) {
  apuesta <- 1
  resultado <- sample(c(rep("rojo", 18), rep("negro", 18), rep("verde", 2)), 1)
  
  if (resultado == "rojo") {
    capital_inicial <- capital_inicial + apuesta # Gana y duplica su inversión
  } else {
    capital_inicial <- capital_inicial - apuesta # Pierde
  }
  
  return(capital_inicial)
}

# Función que calcula cuántas veces puede jugar hasta quedarse sin dinero
cantidad_juegos <- function(n_repeticiones, capital_inicial = 100) {
  juegos_por_repeticion <- numeric(n_repeticiones)
  
  for (i in 1:n_repeticiones) {
    capital <- capital_inicial
    juegos <- 0
    while (capital > 0) {
      capital <- jugar_ruleta(capital)
      juegos <- juegos + 1
    }
    juegos_por_repeticion[i] <- juegos
  }
  
  return(juegos_por_repeticion)
}

# Simulación 1000 veces y cálculo del promedio
n_repeticiones <- 1000
resultados <- cantidad_juegos(n_repeticiones)
promedio_juegos <- mean(resultados)

cat(sprintf("Promedio de juegos antes de quedarse sin dinero tras %d simulaciones: %.2f\n", 
            n_repeticiones, promedio_juegos))
