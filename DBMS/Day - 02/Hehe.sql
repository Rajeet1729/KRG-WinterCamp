show databases;

use day_03;

show tables;

create table E1(
	ID int NOT NULL,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Age int,
    CONSTRAINT PK_PERSON primary key (ID, LastName)
);

ALTER TABLE E1 ADD Address VARCHAR(255);

create table sales1(
	item int,
    date1 date default ('05-01-2001', 'dd-mon-yyyy'),
    price int
);














