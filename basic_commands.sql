--Basic SQL commands

-- DDL DML DCL TCL

--DDL Data Definition language commands are used to describe structures of tables and databases.
--here we can create,modify,drop,rename


--create command to create tables and databases
create database items;
use items;

create table house(
    id int not null AUTO_INCREMENT,
    name varchar(200) not null,
    PRIMARY KEY(id)
);

--alter command to edit no. of columns
alter table house
add rooms varchar(20) not null; 

--drop an existing table (deletes completely)
drop table house;

--truncate the existing table (deletes the data in table structure still remains)
truncate table house;

-- rename the existing table
alter table house rename to building;



