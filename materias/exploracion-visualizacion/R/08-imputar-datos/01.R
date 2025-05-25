# Importar la base Properati Properati (USD) con NA.
# Imputar los datos faltantes con los diferentes métodos.
# Una vez imputados los datos, comparar tales resultados con los valores reales, que se encuentran en la base Properati Properati (USD).
# Esta comparación se pude realizar calculando alguna medida de bondad de ajuste, como puede ser:
# 𝐸𝐶𝑀= (∑ 𝑛; 𝑖=1(𝑖𝑚𝑝𝑢𝑡𝑎𝑑𝑜𝑖−𝑟𝑒𝑎𝑙𝑖)^2) / n


p = which(is.na(properati$price)) ## posiciones con precios que tienen NA

# prop sin NA $price[p]    elevarlo al cuadrado