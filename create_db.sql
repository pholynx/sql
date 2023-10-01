USE [master]
GO

CREATE DATABASE [my_database]
    CONTAINMENT = NONE
ON  PRIMARY 
( NAME = N'my_database', FILENAME = N'D:\mssql\data\my_database.mdf' , SIZE = 204800KB , MAXSIZE = UNLIMITED, FILEGROWTH = 204800KB )
 LOG ON 
( NAME = N'my_database_log', FILENAME = N'E:\mssql\logs\my_database_log.ldf' , SIZE = 204800KB , MAXSIZE = 2048GB , FILEGROWTH = 204800KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
