# Fundamentos de Base de Datos

* Prof: Dr. Enrique Fernandez
* Sábados de 9 a 12
* Enfoque práctico
* Hacer TP final, se puede hacer con SQLite
* Hacer un extractor
* [https://sqlitecloud.io/](https://sqlitecloud.io/)
* [Doc SQLite Cloud](https://docs.sqlitecloud.io/)
* [Tutorial](https://www.sqlitetutorial.net/)
* [Drawio](https://app.diagrams.net/)

Pasos:

1. Entender el problema
1. Refinar el modelo
1. Crear la estructura
1. Hacer consultas

Guardar en un Excel:

* Problemas de seguridad
* Problemas de redundancia

## Concepto BD

* Es una colección organizada de información estructurada que se almacena y se puede acceder de forma rápida y eficiente
* Información precisa, oportuna y completa
* Estructurada: tablas con filas y columnas
* Organizada: los datos se almacenan de forma lógica
* Persistente: datos se mantienen, asegurando disponibilidad
* Tipos de BD: transaccional (operatoria), data warehouse (sacar información de base principal y ponerla en una secundaria para gestión)
* Modelo Relacional, Modelo Objetos

## Características de BD

* **Integridad**: consistencia y precisa, evitando duplicidades y errores
* **Seguridad**: proteger la información
* **Eficiencia**: gestión de forma rápida y eficiente
* **Flexibilidad**: evolución y crecimiento de BD

## Componentes de BD

* **Esquema**: estructura
* **Datos**: información real
* **SGBD**: programas de gestión

## Ventajas de usar BD

* **Consistencia y presición**: integridad de datos, eliminando duplicaciones y errores
* **Accesibilidad y gestion eficiente**: gestión rápida y organizada
* **Escalabilidad y flexibilidad**: creciemiento y evolución de las BD
* **Seguridad y protección**: proteger la información de accesos no autorizados

## Tipos

* Relacionales: filas y columnas
* NoSQL: datos no estructurados. Archivos JSON/XML
* Objeto-Relacionales: relacional con objetos
* [DB-Engines Ranking](https://db-engines.com/en/ranking)

## SGBD

* Software que permite:
  * Creación
  * Gestión
  * Acceso

* Funciones:
  * Definición de datos
  * Manipulación de datos
  * Control de datos
  * Seguridad de datos

* Ejemplos:
  * MySQL
  * PostgreSQL
  * MongoDB
  * Oracle

## Lenguajes

* DDL: definición de datos
* DML: manipulación de datos
* DQL: consulta de datos

## Capas

* Usuarios/Programadores -> Programas de App/Consultas -> SGBD -> Metadatos + BD almacenada

## Etapas de diseño

1. Análisis de requisitos
1. Diseño conceptual: DER
1. Diseño lógico: esquema
1. Refinamiento del esquema: normalización
1. Diseño físico
1. Diseño de aplicaciones y seguridad

## Modelo de Datos

* Modelo conceptual (abstracto) -> Diseño Lógico -> Diseño Físico (implementación)

## Modelo conceptual

* Entidades: ideas (sustantivos)
* Relaciones: vinculaciones (verbos). Cardinalidad: (1:1), (1:N), (M:N)
  * Grados: unario, binario, ternario
* Atributos: características
* Supertipo / Subtipo: "es un". Datos compartidos en supertipo
* Reglas utiles: integridad de los conceptos + buen nivel de abstracción + no modelar reportes, pantallas, vistas + nombres representativos
* Repositorio
