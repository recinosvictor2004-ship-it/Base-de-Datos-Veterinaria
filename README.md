# 🐾 Sistema de Gestión Veterinaria

Base de datos diseñada para administrar información de una clínica veterinaria, incluyendo dueños, mascotas, servicios, visitas y tratamientos.  
Este proyecto fue desarrollado como parte de una práctica académica de modelación y gestión de bases de datos.

---

## 📁 Estructura del repositorio

veterinaria/
│
├── estructura.sql        → Archivo DDL (creación de tablas)
├── datos.sql             → Archivo DML (inserción de datos)
├── consultas.sql         → Archivo DQL (consultas requeridas)
├── diagrama.png          → Diagrama E-R del proyecto
└── README.md             → Documentación del proyecto

---

## 📌 Descripción del proyecto

El objetivo del proyecto es construir una base de datos funcional para una veterinaria, aplicando:

- Modelado E-R  
- Normalización  
- Llaves primarias y foráneas  
- Relaciones 1:N  
- Consultas SQL con funciones de agregación  
- Creación de tablas a partir de consultas  
- Documentación profesional en GitHub  

La base de datos permite gestionar:

- Información de **dueños**  
- Registro de **mascotas**  
- Catálogo de **servicios veterinarios**  
- Historial de **visitas**  
- Aplicación de **tratamientos**

---

## 🗂️ Diagrama E-R

El diagrama E-R incluye las entidades:

- **dueno**  
- **mascota**  
- **servicio**  
- **visita**  
- **tratamiento**

Con sus respectivas relaciones y cardinalidades.

El archivo se encuentra como:

diagrama veterinaria.png

---

## 🧱 1. Estructura de la base de datos (DDL)

El archivo `estructura.sql` contiene:

- Creación de todas las tablas  
- Llaves primarias  
- Llaves foráneas  
- Restricciones (NOT NULL, CHECK)  
- Orden correcto de creación para evitar errores de FK  

### 🔧 Ejecución

```sql
USE veterinaria;
SOURCE estructura.sql;
----------------
### 🐾 2. Inserción de datos (DML)
El archivo datos.sql incluye:

5 dueños

10 mascotas

5 servicios

10 visitas

5 tratamientos

Todos los datos están diseñados para respetar las llaves foráneas y mantener coherencia.

🔧 Ejecución

USE veterinaria;
SOURCE datos.sql;
-------------
### 🔍 3. Consultas SQL (DQL)
El archivo consultas.sql contiene 15 consultas, incluyendo:

Alias

Subconsultas

Funciones de agregación

JOIN

GROUP BY

HAVING

Creación de tabla desde consulta

## 🔧 Ejecución
USE veterinaria;
SOURCE consultas.sql;

--------
👤 Autor
Victor Manuel Recinos Gómez
