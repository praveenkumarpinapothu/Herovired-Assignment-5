create database Salesman
create table SalesmanTable(
	salesman_id int not null primary key,
	name varchar(30) not null,
    city varchar(30) not null,
    commission float not null
);
create table CustomerTable(
	customer_id int not null primary key,
    cust_name varchar(30) not null,
    city varchar(30) not null,
    grade int not null,
    salesman_id int not null
);
insert into salesmanTable values(5001,"James Hoog","New York",0.15),
(5002,"Nail","Paris",0.13),
(5005,"Pit Alex","London",0.11),
(5006,"Mc Lyon","Paris",0.14),
(5007,"Paul Adam","Rome",0.13),
(5003,"Lauson","San Jose",0.12);
insert into customerTable values (3002,"Nick Rimando","New York",100,5001),
(3007,"Brad Davis","New york",200,5001),
(3005,"Graham Zusi","California",200,5002),
(3008,"Julian Green","London",300,5002),
(3004,"Fabian Johnson","Paris",300,5006),
(3009,"Geoff Cameron","Berlin",100,5003),
(3003,"Jozy Altidor","Moscow",200,5007),
(3001,"Brad Guzan","London",000,5005);
-- Q-13
select  name,cust_name,salesmanTable.city from salesmanTable,customerTable where salesmanTable.city=customerTable.city;
-- Q-14
select cust_name,salesmanTable.city,name,commission from salesmanTable,customerTable where salesmanTable.salesman_id=customerTable.salesman_id;
-- Q-15
select cust_name, salesmanTable.city,name,commission from salesmanTable,customerTable where salesmanTable.commission>0.12;