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

--drop an existing table (deletes completely the data and structure)
drop table house;

--truncate the existing table (deletes the data in table but structure still remains)
truncate table house;

-- rename the existing table
alter table house rename to building;

--DML Data Manipulation Commands are used to describe the data in TABLE
--here we can insert,update,delete the data in TABLE

--insert into table
insert into house(name,rooms) values ('AC','20'),('fridge','80'),('TV','10');


--update to TABLE
update house set rooms =100 where name='AC';

--delete row from TABLE
delete from house where name='AC';


--DQL Data Query Language is used to display or look through data in the table
-- we can select,union,join,group by

--select data from table 
select * from house;

-- we can add more conditions llike where to extract specific DATABASE
select * from house where rooms >50;

--adding more data to preform union and joins
insert into house(name,rooms) values ('AC','20'),('remote','5');
select * from house;

--union command to combine results of two tables
select name from house 
UNION
select rooms from house;  --union displays data one after other not adjacently so we use joins to display side by side
