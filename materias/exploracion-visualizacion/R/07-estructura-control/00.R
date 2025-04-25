x <- 2
if (x == 1) print("a") else print("b")

for (i in 1 : 5) print(i)
c <- 0

while (c < 5) {
  print(c)
  c <- c + 1
} 

suma <- function(x, y=2) {
  return (x + y)
}

print(suma(1, 3))
print(suma(1))

incr_edad <- function() {
  e <- as.numeric(readline('Edad: '))
  print(e+1)
}

incr_edad()

