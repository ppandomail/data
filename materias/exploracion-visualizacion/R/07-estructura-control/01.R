# Comprobación de Par o Impar 
# Desarrollar un procedimiento que tome un número entero 
# como entrada y devuelva si el número es par o impar: 
# Si el número es par: “El número es par” 
# Si el número es impar: “El número es impar”

par_impar <- function(numero) {
  if (numero %% 2 == 0) print("El número es par") else ("El número es impar")
}

par_impar(2)
par_impar(3)