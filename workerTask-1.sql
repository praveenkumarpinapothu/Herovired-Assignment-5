create database workers
create table workerTable(
	Worker_ID int not null primary key,
    First_Name varchar(30) not null,
    Last_Name varchar(30) not null,
    Salary int not null,
    Joining_Date varchar(20) not null,
    Department varchar(20) not null
);
insert into workerTable values (001,"Monika","Arora",100000,"2014-02-20 09:00:00","HR"),
(002,"Niharika","Verma",80000,"2014-02-20 09:00:00","Admin"),
(003,"Vishal","Singhal",300000,"2014-02-20 09:00:00","HR"),
(004,"Amitabh","Singh",500000,"2014-02-20 09:00:00","Admin"),
(005,"Vivek","Bhati",500000,"2014-02-20 09:00:00","Admin"),
(006,"Vipul","Diwan",200000,"2014-02-20 09:00:00","Account"),
(007,"Satish","Kumar",75000,"2014-02-20 09:00:00","Account"),
(008,"Geetika","Chouhan",90000,"2014-02-20 09:00:00","Admin");
-- Q-1
 select First_Name as Worker_Name from workerTable;
-- Q-2
select POSITION("a" IN First_Name ) As positionIs from workerTable where First_Name="Amitabh";
-- Q-3
select REPLACE(First_Name, 'A', 'a') as FirstName from workerTable where First_Name="Amitabh"; 
-- Q-4
select * from workerTable order by First_Name ASC;
-- Q-5
select First_Name, Department from workerTable order by First_Name asc ,Department desc;	
-- Q-6
select * from workerTable where First_Name="Vipul" or First_Name="Satish"
-- Q-7
select * from workerTable where Department="admin";
-- Q-8
select * from workerTable where First_Name like 'a%'; 