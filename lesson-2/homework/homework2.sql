--Basic-Level Tasks
1.create table Employees (EmpID INT, NAME VARCHAR(50), SALARY DECIMAL(10,2));
2.INSERT INTO Employees (EmpID, name, salary) values (1, 'Aziza', 50000.00); INSERT INTO Employees (EmpID, name, salary) values (1, 'Aziza', 50000.00), (2, 'Sevara', 4500.00)  
3.Update Employees SET salary=12500.00 where EmpID=2
4.Delete from employees Where Empid=2
5.  create table test_table (ID int, NAme varchar(20))
    insert into test_table values (1, 'anvar'), (2, 'Abdillo'), (3, 'Sevara')
    select * from test_table
    delete from test_table where id=2
    select * from test_table
    truncate table test_table
    select * from test_table
    drop table test_table
6.Alter table employees alter column name Varchar(100)
7.Alter table employees add department varchar(50)
8.Alter table employees alter column salary float
9.Create table Departments (DepartmentID int Primary key, departmentname varchar(50))
10.Truncate table departments
--Intermediate-Level Tasks 
11.Insert into Departments values (1, 'Moliya'), (2, 'Bank'), 
               (3, 'buhgalter'), (4, 'kassa'), (5, 'monitoring')
  Select * from Departments
12.Update Employees set department='management'
  where salary>5000
13.Truncate table employees
14.Alter table employees Drop column Department
15.Exec sp_rename 'employees', 'StaffMembers'
16.Drop table Departments





