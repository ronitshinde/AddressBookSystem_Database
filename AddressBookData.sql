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
--Select Query
SELECT * FROM AddressBook_DB

--Insert Query 
INSERT INTO AddressBook_DB(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
VALUES('Ronit','Patil','Gaon','Satara','Mah',401256,7418529631,'ronit@gmail.com'),
('Raj','Roy','village','Pune','Guj',475486,7412589632,'roy@gmail.com'),
('Sam','Manekshaw','Kheda','Mumbai','Tamil Nadu',451263,7894561232,'sam@gmail.com')

--Update Query
UPDATE AddressBook_DB SET LastName = 'Rane' WHERE FirstName = 'Ronit'

--Delete Query
DELETE FROM AddressBook_DB WHERE FirstName = 'Ronit'

INSERT INTO AddressBook_DB(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
VALUES('Shubham','Pisal','Lane','Pune','Punjab',414568,7789456331,'King@gmail.com'),
('Sheetal','Pathan','Track','Kolhapur','Tamil Nadu',445693,7412589563,'Queen@gmail.com'),
('Rushikesh','Pawar','Area','Solapur','Mah',445674,7412563963,'Queen@gmail.com')

--Retreive Query
SELECT * FROM AddressBook_DB WHERE City = 'Pune'

--Size Query
SELECT COUNT (*) FROM AddressBook_DB GROUP BY City 
SELECT COUNT (*) FROM AddressBook_DB GROUP BY State

SELECT COUNT (*) FROM AddressBook_DB WHERE City = 'Kolhapur' GROUP BY State
SELECT COUNT (*) FROM AddressBook_DB WHERE State = 'Mah' GROUP BY State

SELECT COUNT (*) AS StateCount,State FROM AddressBook_DB GROUP BY State
SELECT COUNT (*) AS CityCount,City FROM AddressBook_DB GROUP BY City
