use master;
Go
-- Check if  DATABASE exist or not if exists delete ---
IF EXISTS( SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
   BEGIN
	    ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
		DROP DATABASE Datawarehouse
   END
GO

CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO

-- create schema

CREATE SCHEMA Broze;
Go

CREATE SCHEMA Sliver;
GO


CREATE SCHEMA Gold;
Go
