1. select a.name, b.DepartmentName, a.Salary from Employees as a
   join Departments as b
   on a.DepartmentID=b.DepartmentID
   where a.Salary>50000
2. select a.FirstName, a.LastName, b.OrderDate from Customers as a
   join Orders as b
   on a.CustomerID=b.CustomerID
   where year(b.OrderDate)=2023
3.   
