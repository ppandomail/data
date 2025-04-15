# Normalización

```mermaid
erDiagram
    ENVIO {
        * ENVIO_NO "Numero de ENVIO (CP)"
        * ENVIO_FECHA "Fecha de la ENVIO"
        * ENVIO_HORA "Hora de la ENVIO"
        * ORGN_RIF  "Identificacion de Empresa Origen"
        * ORGN_NOM "Nombre de Empresa Origen"
        * ORGN_ACT "Actividad Comercial de Empresa Origen"
        * ORGN_CIUDAD "Ciudad de Empresa Origen"
        * ORGN_DIR "Direccion de Empresa Origen"
        * ORGN_TEL "Telefono de Empresa Origen"
        * ORGN_CEL "Celular de Empresa Origen"
        * DEST_ID "Identificacion del destinatario"
        * DEST_NOM "Nombre del destinatario"
        * DEST_COD_CIUDAD "Codigo de la ciudad del destinatario"
        * DEST_CIUDAD "Ciudad del destinatario"
        * DEST_DIR "Direccion del destinatario"
        * DEST_TEL "Telefono del destinatario"
        * DEST_KM "Distancia kilometraje de Ciudad origen a ciudad del destinatario"
        * CARGA(1-5) "{CODIGO = Codigo del paquete, TIPO = Tipo de paquete, NOMBRE = Nombre del paquete, DESCRIPCION = Descripción del paquete}"
        * VALR_FLETE "Valor del flete"
    }
```

## FN1: Eliminar calculables y extraer grupos repetidos

```mermaid
erDiagram
    ENVIO {
        * ENVIO_NO PK
        * ENVIO_FECHA
        * ENVIO_HORA
        * ORGN_RIF
        * ORGN_NOM
        * ORGN_ACT
        * ORGN_CIUDAD
        * ORGN_DIR
        * ORGN_TEL
        * ORGN_CEL
        * DEST_ID
        * DEST_NOM
        * DEST_COD_CIUDAD
        * DEST_CIUDAD
        * DEST_DIR
        * DEST_TEL
        * DEST_KM 
        * VALR_FLETE 
    }

    CARGA {
        * ENVIO_NO PK
        * CODIGO PK
        * TIPO
        * NOMBRE
        * DESCRIPCION
    }
```

## FN2: mirar claves compuestas para desdoblar

```mermaid
erDiagram
    ENVIO {
        * ENVIO_NO PK
        * ENVIO_FECHA
        * ENVIO_HORA
        * ORGN_RIF
        * ORGN_NOM
        * ORGN_ACT
        * ORGN_CIUDAD
        * ORGN_DIR
        * ORGN_TEL
        * ORGN_CEL
        * DEST_ID
        * DEST_NOM
        * DEST_COD_CIUDAD
        * DEST_CIUDAD
        * DEST_DIR
        * DEST_TEL
        * DEST_KM 
        * VALR_FLETE 
    }

    CARGA {
        * ENVIO_NO PK
        * CODIGO PK
    }

    PAQUETE {
        * CODIGO PK
        * TIPO
        * NOMBRE
        * DESCRIPCION
    }
```

## FN3: mirar dependencias entre no claves

```mermaid
erDiagram
    ENVIO {
        * ENVIO_NO PK
        * ENVIO_FECHA
        * ENVIO_HORA
        * ORGN_RIF FK
        * DEST_ID FK 
        * VALR_FLETE  
    }

    EMPRESA_ORIGEN {
        * ORGN_RIF PK
        * ORGN_NOM
        * ACT_COD FK
        * CIUDAD_COD FK
        * ORGN_DIR
        * ORGN_TEL
        * ORGN_CEL
    }

    ACTIVIDAD {
        * ACT_COD PK
        * ACT_NOM
    }

    DESTINATARIO {
        * DEST_ID PK
        * DEST_NOM
        * CIUDAD_COD FK
        * DEST_DIR
        * DEST_TEL
        * DEST_KM 
    }

    CIUDAD {
        * CIUDAD_COD PK
        * CIUDAD_NOM
    }

    CARGA {
        * ENVIO_NO PK
        * PAQ_CODIGO PK
    }

    PAQUETE {
        * PAQ_CODIGO PK
        * TIPO_PAQ_COD FK
        * NOMBRE
        * DESCRIPCION
    }

    TIPO_PAQ {
        * TIPO_PAQ_COD PK
        * TIPO_PAQ_NOM
    }
```
