# TP

## Enunciado

* En base a la estructura presentada se solicita:

  1. Redefinir la estructura eliminando o incorporando atributos
  2. Llevar la estructura a 3ra forma normal
  3. Desarrollar el diagrama de entidad relación
  4. Crear las tablas mediane instrucciones SQL
  5. Poblar las tablas con al menos 20 filas en su tabla principal mediane instrucciones SQL
  6. Mediante instrucciones SQL crear un Dataset que unifique las tablas, luego exportarlo como TXT o CSV
  7. Crear un Dataset que agrupe las compras de un CLIENTES, totalizando los montos de las compras
  8. Crear un Dataset que agrupe las compras por estados, totalizando los montos de las compras

* Estructura:
  * CLIENTES ID (Clave que identifica de forma unívoca al CLIENTES)
  * Nombre CLIENTES (Incluye: nombre y apellido)
  * Dirección CLIENTES (incluye: Calle, Nro, Piso, Departamento, CP, LOCALIDADES, PROVINCIAS)
  * Teléfono CLIENTES \* (puede tener más de uno)
  * SEGMENTOS ID (Clave que identifica los distintos SEGMENTOS de CLIENTES)
  * Descripción de SEGMENTOS
  * Tipo de FACTURAS (A-B-C)
  * Nro de FACTURAS (Nro secuencial único para cada tipo de FACTURAS)
  * Fecha FACTURAS
  * Detalle FACTURAS \* (pueden existir entre 1 y 30 ítems)
    * PRODUCTOS ID (Clave que identifica de forma unívoca un PRODUCTOS)
    * Nombre PRODUCTOS
    * Precio PRODUCTOS
    * Cantidad
  * Total FACTURAS (surge de la sumatoria de los ítems del detalle de la FACTURAS)
  * Bonificación importe (se determina en base a SEGMENTOS del CLIENTES)
  * Estado FACTURAS ID (Clave que identifica los estados de una FACTURAS)
  * Descripción estado FACTURAS (ingresada, en preparación, entregada)
  * Dirección entrega PRODUCTOS (puede ser nulo)

## 1. Redefinir la estructura eliminando o incorporando atributos

* Estructura:
  * CLIENTE_ID (Clave que identifica de forma unívoca al CLIENTES)
  * CLIENTE_NOMBRE
  * **CLIENTE_APELLIDO**
  * CLIENTE_DIRECCION (incluye: Calle, Nro, Piso, Departamento, CP, LOCALIDADES, PROVINCIAS)
  * CLIENTE_TELEFONO \* (puede tener más de uno)
  * SEGMENTO_CLIENTE_ID (Clave que identifica los distintos SEGMENTOS de CLIENTES)
  * SEGMENTO_CLIENTE_DESCRIPCION
  * **FACTURA_ID (PK)**
  * FACTURA_TIPO (A-B-C)
  * FACTURA_NRO (Nro secuencial único para cada tipo de FACTURAS)
  * FACTURA_FECHA
  * FACTURA_DETALLE \* (pueden existir entre 1 y 30 ítems)
    * PRODUCTO_ID (Clave que identifica de forma unívoca un PRODUCTOS)
    * PRODUCTO_NOMBRE
    * PRODUCTO_PRECIO
    * PRODUCTO_CANTIDAD
  * FACTURA_TOTAL (surge de la sumatoria de los ítems del detalle de la FACTURAS)
  * SEGMENTO_BONIFICACION (se determina en base a SEGMENTOS del CLIENTES)
  * ESTADO_FACTURA_ID (Clave que identifica los estados de una FACTURAS)
  * ESTADO_FACTURA_DESCRIPCION (ingresada, en preparación, entregada)
  * FACTURA_DIRECCION_ENTREGA (puede ser nulo)

## 2. Llevar la estructura a 3ra forma normal

### FN1: Eliminar calculables y extraer grupos repetidos

* Se elimina Total FACTURAS (surge de la sumatoria de los ítems del detalle de la FACTURAS)
* Se extraen grupos repetidos:

```mermaid
erDiagram
    FACTURAS {
      INTEGER  CLIENTE_ID
      NVARCHAR CLIENTE_NOMBRE
      NVARCHAR CLIENTE_APELLIDO
      NVARCHAR CLIENTE_DIRECCION
      INTEGER  SEGMENTO_CLIENTE_ID
      NVARCHAR SEGMENTO_CLIENTE_DESCRIPCION
      INTEGER  FACTURA_ID PK
      NVARCHAR FACTURA_TIPO
      INTEGER  FACTURA_NRO
      DATETIME FACTURA_FECHA
      NUMBER   SEGMENTO_CLIENTE_BONIFICACION
      INTEGER  ESTADO_FACTURA_ID
      NVARCHAR ESTADO_FACTURA_DESCRIPCION
      NVARCHAR FACTURA_DIRECCION_ENTREGA
    }
    TELEFONOS {
      INTEGER FACTURA_ID PK
      INTEGER TELEFONO_NRO PK
    }
    FACTURA_DETALLE {
      INTEGER  FACTURA_ID PK
      INTEGER  PRODUCTO_ID PK
      NVARCHAR PRODUCTO_NOMBRE
      NUMBER   PRODUCTO_PRECIO
      INTEGER  PRODUCTO_CANTIDAD
    }
```

### FN2: mirar claves compuestas para desdoblar

```mermaid
erDiagram
    FACTURAS {
      INTEGER  CLIENTE_ID
      NVARCHAR CLIENTE_NOMBRE
      NVARCHAR CLIENTE_APELLIDO
      NVARCHAR CLIENTE_DIRECCION
      INTEGER  SEGMENTO_CLIENTE_ID
      NVARCHAR SEGMENTO_CLIENTE_DESCRIPCION
      INTEGER  FACTURA_ID PK
      NVARCHAR FACTURA_TIPO
      INTEGER  FACTURA_NRO
      DATETIME FACTURA_FECHA
      NUMBER   SEGMENTO_CLIENTE_BONIFICACION
      INTEGER  ESTADO_FACTURA_ID
      NVARCHAR ESTADO_FACTURA_DESCRIPCION
      NVARCHAR FACTURA_DIRECCION_ENTREGA
    }
    TELEFONOS {
      INTEGER FACTURA_ID PK
      INTEGER TELEFONO_NRO PK
    }
    FACTURA_DETALLE {
      INTEGER FACTURA_ID PK
      INTEGER PRODUCTO_ID PK
    }
    PRODUCTOS {
      INTEGER  PRODUCTO_ID PK
      NVARCHAR PRODUCTO_NOMBRE
      NUMBER   PRODUCTO_PRECIO
      INTEGER  PRODUCTO_CANTIDAD
    }
```

### FN3: mirar dependencias entre no claves

```mermaid
erDiagram
    FACTURAS {
      INTEGER  FACTURA_ID PK
      NVARCHAR FACTURA_TIPO
      INTEGER  FACTURA_NRO
      INTEGER  CLIENTE_ID FK
      DATETIME FACTURA_FECHA
      INTEGER  ESTADO_FACTURA_ID FK
      INTEGER  DIRECCION_ID FK
    }
    CLIENTES {
      INTEGER  CLIENTE_ID PK
      NVARCHAR CLIENTE_NOMBRE
      NVARCHAR CLIENTE_APELLIDO
      INTEGER  DIRECCION_ID FK
      INTEGER  SEGMENTO_CLIENTE_ID FK 
    }
    DIRECCION {
      INTEGER  DIRECCION_ID PK
      NVARCHAR DIRECCION_CALLE
      NVARCHAR DIRECCION_NRO
      NVARCHAR DIRECCION_PISO
      NVARCHAR DIRECCION_DEPARTAMENTO
      INTEGER  LOCALIDAD_ID FK
    }
    LOCALIDADES {
      INTEGER  LOCALIDAD_ID PK
      NVARCHAR LOCALIDAD_NOMBRE
      NVARCHAR LOCALIDAD_CP
      INTEGER  PROVINCIA_ID FK
    }
    PROVINCIAS {
      INTEGER  PROVINCIA_ID PK
      NVARCHAR PROVINCIA_NOMBRE
    }
    TELEFONOS {
      INTEGER TELEFONO_NRO PK
      INTEGER CLIENTE_ID FK
    }
    SEGMENTOS_CLIENTE {
      INTEGER  SEGMENTO_CLIENTE_ID PK
      NVARCHAR SEGMENTO_CLIENTE_NOMBRE
      NUMBER   SEGMENTO_CLIENTE_BONIFICACION
    }
    ESTADOS_FACTURA {
      INTEGER  ESTADO_FACTURA_ID PK
      NVARCHAR ESTADO_FACTURA_DESCRIPCION
    }
    FACTURA_DETALLE {
      INTEGER FACTURA_DETALLE_ID PK
      INTEGER FACTURA_ID FK
      INTEGER PRODUCTO_ID FK
    }
    PRODUCTOS {
      INTEGER  PRODUCTO_ID PK
      NVARCHAR PRODUCTO_NOMBRE
      NUMBER   PRODUCTO_PRECIO
      INTEGER  PRODUCTO_CANTIDAD
    }
```

## DER

[Mermaid](https://mermaid.js.org/syntax/entityRelationshipDiagram.html)

```mermaid
erDiagram
    FACTURAS }|--|| CLIENTES : ""
    FACTURAS }o--|| ESTADOS_FACTURA : ""
    FACTURAS |o--o| DIRECCIONES : ""
    FACTURAS {
      INTEGER  FACTURA_ID PK
      NVARCHAR FACTURA_TIPO "{A, B, C}"
      INTEGER  FACTURA_NRO
      INTEGER  CLIENTE_ID FK
      DATETIME FACTURA_FECHA
      INTEGER  ESTADO_FACTURA_ID FK
      INTEGER  DIRECCION_ID FK
    }
    CLIENTES ||--|| DIRECCIONES : ""
    CLIENTES }o--|| SEGMENTOS_CLIENTE : ""
    CLIENTES {
      INTEGER  CLIENTE_ID PK
      NVARCHAR CLIENTE_NOMBRE
      NVARCHAR CLIENTE_APELLIDO
      INTEGER  DIRECCION_ID FK
      INTEGER  SEGMENTO_CLIENTE_ID FK 
    }
    DIRECCIONES }|--|| LOCALIDADES : ""
    DIRECCIONES {
      INTEGER  DIRECCION_ID PK
      NVARCHAR DIRECCION_CALLE
      NVARCHAR DIRECCION_NRO
      NVARCHAR DIRECCION_PISO
      NVARCHAR DIRECCION_DEPARTAMENTO
      INTEGER  LOCALIDAD_ID FK
    }
    LOCALIDADES }|--|| PROVINCIAS : ""
    LOCALIDADES {
      INTEGER  LOCALIDAD_ID PK
      NVARCHAR LOCALIDAD_NOMBRE
      NVARCHAR LOCALIDAD_CP
      INTEGER  PROVINCIA_ID FK
    }
    PROVINCIAS {
      INTEGER  PROVINCIA_ID PK
      NVARCHAR PROVINCIA_NOMBRE
    }
    TELEFONOS }o--|| CLIENTES : ""
    TELEFONOS {
      INTEGER TELEFONO_NRO PK
      INTEGER CLIENTE_ID FK
    }
    SEGMENTOS_CLIENTE {
      INTEGER  SEGMENTO_CLIENTE_ID PK
      NVARCHAR SEGMENTO_CLIENTE_NOMBRE
      NUMBER   SEGMENTO_CLIENTE_BONIFICACION
    }
    ESTADOS_FACTURA {
      INTEGER  ESTADO_FACTURA_ID PK
      NVARCHAR ESTADO_FACTURA_DESCRIPCION
    }
    FACTURA_DETALLES }|--|| FACTURAS : ""
    FACTURA_DETALLES }|--|| PRODUCTOS : ""
    FACTURA_DETALLES {
      INTEGER FACTURA_DETALLE_ID PK
      INTEGER FACTURA_ID FK
      INTEGER PRODUCTO_ID FK
      INTEGER  PRODUCTO_CANTIDAD
    }
    PRODUCTOS {
      INTEGER  PRODUCTO_ID PK
      NVARCHAR PRODUCTO_NOMBRE
      NUMBER   PRODUCTO_PRECIO
    }
```

## SQL - create

## SQL - insert

## SQL - exportación txt/csv

## DATASET agrupe compras de un CLIENTES, totalizando montos

## DATASET agrupe compras por estados, totalizando montos
