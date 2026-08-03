/*---------------- 1. CREACIÓN DE BASE DE DATOS -----------*/
-- Estructura Base de Datos
USE master;
GO

-- Validar existencia de la base de datos
IF DB_ID('MANTICOR_FITNESS') IS NOT NULL
BEGIN
	DROP DATABASE MANTICOR_FITNESS;
	PRINT 'La base de datos MANTICOR_FITNESS fue eliminada';
END
GO

-- Crear la base de datos
CREATE DATABASE MANTICOR_FITNESS;
PRINT 'Base de datos MANTICOR_FITNESS creada correctamente';
GO

-- Usar la base de datos
USE MANTICOR_FITNESS;
PRINT 'Base de datos MANTICOR_FITNESS seleccionada';
GO

-- Crear Esquema de Tablas
CREATE SCHEMA MANTICOR;
GO
PRINT 'Se creó el esquema MANTICOR';
GO


/*---------------- 2. CREACIÓN TABLAS -----------*/
--TABLA ROL
-- Validar existencia de la tabla Rol
IF OBJECT_ID('manticor.rol', 'U') IS NOT NULL
BEGIN
	DROP TABLE manticor.rol;
	PRINT 'Tabla rol eliminada';
END
GO