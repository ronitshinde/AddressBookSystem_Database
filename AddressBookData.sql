--what is SQL? Sql is a structured query language
--Sql is a standard language for storing and retrieving data from database

CREATE DATABASE AddressBook_Service

USE AddressBook_Service

--Create Table
--Primary key is uniquely identify each record in a table it cannot contain a null value
--In a table we can have only one primary key
CREATE TABLE AddressBook_DB (PersonId INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR (30) NOT NULL,
LastName VARCHAR (30) NOT NULL,
Address VARCHAR (50) NOT NULL,
City VARCHAR (30) NOT NULL,
State VARCHAR (20) NOT NULL,
Zip INT NOT NULL,
PhoneNumber BIGINT NOT NULL,
Email VARCHAR (20) NOT NULL,
);

