from faker import Faker
from random import *


fake = Faker("es_AR")
#print(fake.name())
#print(fake.address())
#print(fake.address())
#print(fake.first_name())
#print(fake.last_name())
#print(fake.phone_number())
#seg = randint(1, 3)
for i in range(1, 100):
  fac = randint(1, 49)
  prod = randint(2, 178)
  cant = randint(1, 3) 
  insert = f"conn.execute(\"INSERT INTO FACTURA_DETALLES (FACTURA_ID, PRODUCTO_ID, CLIENTE_ID, PRODUCTO_CANTIDAD) VALUES ({fac}, {prod}, {cant});\")"
  print(insert)
