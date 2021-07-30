# pruebanetsodimac
Prueba .net para Sodimac CAR-CENTER

Para la instalación de este programa se debe tener en cuenta.

1. Visual studio 2019 y MVC Ver. 5

2. LA base de datos es MS SQL Server Express 2019 con Microsoft Management Studio 18

INSTALAR LA BASE DE DATOS
=========================
Para instalar la base de datos inicar MS SQL Server abrir la consola de Query "New Query"
Y pegar el escrip de la base de datos que está en la raiz del repositorio y se llama definicion_bd.sql

En el arbol sobre el nombre de la base de datos llamada "CAR_CENTER", se observa la seccipon "Database Diagrams", 
aqui se puede verificar la ENTIDAD RELACION de las tablas y su definicion.

SOBRE LA APLICACION
===================
Al CLONAR la aplicación se debe asegurar estar el Entity Framework Ver. 6.

Ir a la carpeta y cargar la solucion "pruebasodumac.sln"

Verificar cuando se cargue todo el proyecto el esquema de la BD, en la sección "Model" BD.edmx

Ejectuar la aplicación.

Tenga en cuenta:
================

La aplicacion inicia con su pantalla principal en la parte superior una barra de menu con las opciones:
Inicio
Cliente
Servicio: Mantenimiento y Repuestos
Contacto
Acerca de

Paso 1
======
Se registra el cliente con sus datos

Paso 2
====== 
Se selecciona "Servicio" opcion "Mantenimiento" y registran los datos para el mantenimiento incicando al mecánico y demás datos 
por ultimo "Ingresar mantenimiento" y ase añade a la lista.

Paso 3 - En caso de venta directa al cliente o de reguerirse repuestos para el mantenimiento 
======
Se selecciona "Repuestos" y se registran los repuestos requeridos por el cliente para la venta o por el Mecácnico para el mantenimiento.
luego "Ingresar" para registrar el repuesto solicitado.






