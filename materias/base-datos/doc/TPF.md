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
  * SEGMENTOS ID (Clave que identifica los distintos SEGMENTOSs de CLIENTES)
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
  * Dirección entrega PRODUCTOSs (puede ser nulo)

## DER

[Mermaid](https://mermaid.js.org/syntax/entityRelationshipDiagram.html)

```mermaid
erDiagram
    CLIENTES }|--|| SEGMENTOS : pertenece
    CLIENTES ||--|| DOMICILIOS: tiene
    CLIENTES ||--}| FACTURAS: tiene
    CLIENTES ||--}| TELEFONOS: tiene
    CLIENTES {
      int    cliente_id PK
      string cliente_nombre
      string cliente_apellido
    }
    SEGMENTOS {
      int    segmento_id PK
      string segmento_descripcion
    }
    DOMICILIOS {
        int    domicilio_id PK
        string domicilio_calle
        int    domicilio_piso
        string domicilio_departamento
    }
    LOCALIDADES ||--}| DOMICILIOS : pertenece
    LOCALIDADES {
        int    localidades_id PK
        string localidades_nombre
        string localidades_cp
    }
    PROVINCIAS ||--}| LOCALIDADES : pertenece
    PROVINCIAS {
        int    provincias_id PK
        string provincias_nombre
    }
    TELEFONOS {
      int    telefono_id PK
      string telefono_numero  
    }
    FACTURAS ||--o| DOMICILIOS: entrega
    FACTURAS }|--|| ESTADOS: tiene
    FACTURAS ||--}| FACTURAS_ITEMS: tiene
    FACTURAS {
        int    factura_id PK
        int    factura_numero
        string factura_tipo     "{A ,B, C}"
        date   factura_fecha
    }
    ESTADOS {
        int    estado_id PK
        string estado_nombre     "{ingresada, en preparación, entregada}"
    }
    FACTURAS_ITEMS }|--|| PRODUCTOS: tiene
    FACTURAS_ITEMS {
        int factura_item_id PK
        int factura-item_cantidad_producto  
    }
    PRODUCTOS {
        int    producto_id PK
        string producto_nombre
        float  producto_precio
    }
```

## SQL - create

## SQL - insert

## SQL - exportación txt/csv

## DATASET agrupe compras de un CLIENTES, totalizando montos

## DATASET agrupe compras por estados, totalizando montos
