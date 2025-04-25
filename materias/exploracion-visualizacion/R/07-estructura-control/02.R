# Análisis de Temperatura. 
# Crea un script que evalúe la temperatura ingresada por el usuario y 
# devuelva un mensaje según los siguientes rangos: 
# Menos de 0°C: “Hace frío” 
# Entre 0°C y 20°C: “Temperatura templada” 
# Más de 20°C: “Hace calor”

temperatura <- function() {
  temp <- as.numeric(readline('Temperatura: '))
  if (temp < 0) return ("Hace frío")
  if (temp <= 20) return ("Temperatura templada")
  return ("Hace calor")
}

print(temperatura())