--Easy-Level Tasks
1. select P.PRODUCTNAME, S.SupplierName from Products AS P
   JOIN Suppliers AS S
        ON P.ProductID=S.SupplierID
2. Select * from Employees 
   cross join Departments 
3. select A.SupplierName, B.PRODUCTNAME from Suppliers AS A
   JOIN Products AS B
        ON A.SupplierID=b.SupplierID
4. select A.FirstName, B.OrderID from Customers as A
   join Orders as B
        on A.CustomerID=B.CustomerID
5. select * from Students
   cross join Courses
6. select b.ProductName, a.OrderID from Orders as a
   join Products as b
        on a.ProductID=b.ProductID
7. select a.name, b.DepartmentName from Employees as a
   join Departments as b
   on a.DepartmentID=b.DepartmentID
8. select a.name, b.CourseID from Students as a
   join Enrollments as b
   on a.StudentID=b.StudentID
9. select a.OrderID, a.PaymentMethod from Payments as a
   join Orders as b
  on a.orderid=b.orderid
10. select a.OrderID, b.Price from Orders as a
    join Products as b
    on a.ProductID=b.ProductID and b.Price>100
--Medium
11.select  b.DepartmentName, coalesce(firstname, lastname) as name from Employees as a
   cross join Departments as b
   where a.EmployeeID<>b.DepartmentID
12. select * from Orders as a
    join Products as b
    on a.ProductID=b.ProductID
    where a.Quantity>b.stock
13. select b.productID, a.FirstName, b.saleamount from Customers as a
    join sales as b
    on a.CustomerID=b.customerID
    where saleamount>=500
14. select c.Name, a.CourseName from Courses as a
    join Enrollments as b
    on a.CourseID=b.CourseID
    join Students as c
    on b.StudentID=c.StudentID   
15. select b.ProductName, a.SupplierName from Suppliers as a
    join Products as b
    on a.SupplierID=b.SupplierID
    where a.SupplierName like '%tech%'
16. select * from Orders as a 
    join Payments as b
    on a.OrderID=b.OrderID
    where a.TotalAmount>b.Amount
17. select a.Name, b.departmentname from Employees as a
    join Departments as b
    on a.DepartmentID=b.DepartmentID
18. select a.ProductName, b.CategoryName from Products as a
    join Categories as b
    on a.Category=b.CategoryID
    where b.CategoryName in ('Electronics', 'furniture')
19. select a.SaleID, b.FirstName, b.LastName, b.Country from Sales as a
    join Customers as b
    on a.CustomerID=b.CustomerID
    where b.Country='USA'
20. select a.OrderID, b.Country, a.TotalAmount  from Orders as a
    join Customers as b
    on a.CustomerID=b.CustomerID
    where a.TotalAmount>100 and b.Country='germany' 
--Hard 
21. select b.name, count(b.departmentid) as department from Employees as a
    join Employees as b
    on a.DepartmentID=b.DepartmentID
    group by b.name
    order by department
22. select * from Payments as a
    join Orders as b
    on a.OrderID=b.OrderID
    join Products as c
    on b.ProductID=c.ProductID
    where a.Amount<>(b.Quantity*c.Price)

























