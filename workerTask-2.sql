-- Q-9
select * from workerTable where  Salary between 100000 and 500000;
-- Q-10
select * from workerTable where right(First_Name,1)='h' and length(First_Name)=6;
-- Q-11
select * from workerTable where Joining_Date like '2014-02%';
-- Q-12
select * from workerTable where Salary >= 50000 and  Salary<= 100000;