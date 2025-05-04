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
